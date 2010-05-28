#!/usr/bin/env bash

cd ${0%/*}
export LIBERTY_HOME=$(pwd)
export PATH=$LIBERTY_HOME/target/bin:$PATH
export plain=FALSE
export LOG=$LIBERTY_HOME/install$(date +'-%Y%m%d-%H%M%S').log

. $LIBERTY_HOME/work/tools.sh

function bootstrap()
{
    cd $LIBERTY_HOME
    test -d target || mkdir target
    cd target

    title "Unpacking SmartEiffel"
    test -d SmartEiffel && rm -rf SmartEiffel
    run tar xvfj $LIBERTY_HOME/work/SmartEiffel.tar.bz2

    if [ ! -d bin ]; then
	title "Preparing target"
	mkdir bin
	cd bin
	for f in $LIBERTY_HOME/src/tools/main/*.ace; do
	    ace=${f##*/} && ace=${ace%.ace}
	    mkdir $LIBERTY_HOME/target/bin/${ace}.d
	    ln -s $f $LIBERTY_HOME/target/bin/${ace}.d/
	done
	cd ..
    fi

    if [ ! -d libertyrc ]; then
	title "Preparing Liberty environment"
	mkdir libertyrc
	cd libertyrc
	cat > libertyi.rc <<EOF
master libertyi

environment
	path_liberty is "$LIBERTY_HOME"

cluster
	LIBERTY_LIBRARY: "\${path_liberty}/src/lib"
	LIBERTY_TOOLS: "\${path_liberty}/src/tools"

end
EOF
	cd ..
    fi

    if [ -L $HOME/.liberty ]; then
	rm $HOME/.liberty
    elif [ -e $HOME/.liberty ]; then
	mv $HOME/.liberty $HOME/.liberty~
    fi
    ln -s $LIBERTY_HOME/target/libertyrc $HOME/.liberty

    if [ ! -d serc ]; then
	title "Preparing SmartEiffel environment"
	mkdir serc
	cd serc
	cat > liberty.se <<EOF
[General]
bin: $LIBERTY_HOME/target/bin
sys: $LIBERTY_HOME/sys
short: $LIBERTY_HOME/target/SmartEiffel/short
os: UNIX
flavor: Linux
tag: 3
jobs: 4

[Environment]
path_liberty: $LIBERTY_HOME/
path_se_tools: $LIBERTY_HOME/target/SmartEiffel/tools/
path_se_tutorial: $LIBERTY_HOME/target/SmartEiffel/tutorial/

[Loadpath]
liberty: \${path_liberty}src/loadpath.se
test: \${path_liberty}test/loadpath.se
se_tools: \${path_se_tools}loadpath.se
se_tutorial: \${path_se_tutorial}loadpath.se

[Tools]
c: compile
c2c: compile_to_c
clean: clean
pretty: pretty
short: short
find: finder
--ace_check: ace_check
class_check: class_check
--doc: eiffeldoc
test: eiffeltest
--x_int: extract_internals
--sedb: se_debug

[boost]
-- c_compiler_type: tcc
-- smarteiffel_options: -no_strip
c_compiler_type: gcc
c_compiler_options: -pipe -Os
cpp_compiler_type: g++
cpp_compiler_options: -pipe -Os

[no_check]
c_compiler_type: gcc
c_compiler_options: -pipe -O1
cpp_compiler_type: g++
cpp_compiler_options: -pipe -O1

[require_check]
c_compiler_type: gcc
c_compiler_options: -pipe
cpp_compiler_type: g++
cpp_compiler_options: -pipe

[ensure_check]
c_compiler_type: gcc
c_compiler_options: -pipe
cpp_compiler_type: g++
cpp_compiler_options: -pipe

[invariant_check]
c_compiler_type: gcc
c_compiler_options: -pipe
cpp_compiler_type: g++
cpp_compiler_options: -pipe

[loop_check]
c_compiler_type: gcc
c_compiler_options: -pipe
cpp_compiler_type: g++
cpp_compiler_options: -pipe

[all_check]
c_compiler_type: gcc
c_compiler_options: -pipe
cpp_compiler_type: g++
cpp_compiler_options: -pipe

[debug_check]
c_compiler_type: gcc
c_compiler_options: -pipe -g
cpp_compiler_type: g++
cpp_compiler_options: -pipe -g
smarteiffel_options: -no_strip

[release]
c_compiler_type: gcc
c_compiler_options: -pipe -O3 -fomit-frame-pointer
cpp_compiler_type: g++
cpp_compiler_options: -pipe -O3 -fomit-frame-pointer
smarteiffel_options: -no_split

EOF
	cd ..
    fi

    if [ -L $HOME/.serc ]; then
	rm $HOME/.serc
    elif [ -e $HOME/.serc ]; then
	mv $HOME/.serc $HOME/.serc~
    fi
    ln -s $LIBERTY_HOME/target/serc $HOME/.serc

    title "Bootstrapping SmartEiffel tools"
    cd SmartEiffel/work/germ

    if [ ! -d ../../../bin/compile_to_c.d ]; then
	progress 30 0 11 "germ"
	test -d ../../../bin/compile_to_c.d || mkdir ../../../bin/compile_to_c.d
	run gcc compile_to_c.c -pipe -o ../../../bin/compile_to_c.d/compile_to_c || exit 1
    fi
    cd $LIBERTY_HOME/target/bin/compile_to_c.d

    progress 30 1 11 "compile_to_c T1"
    run ./compile_to_c -verbose -boost compile_to_c -o compile_to_c || exit 1
    if [ $(cat compile_to_c.make | grep ^gcc | wc -l) != 0 ]; then
	grep ^gcc compile_to_c.make | while read cmd; do
	    progress 30 1 11 "$cmd"
	    run $cmd || exit 1
	done

	progress 30 2 11 "compile_to_c T2"
	run ./compile_to_c -verbose -boost compile_to_c -o compile_to_c || exit 1
	if [ $(cat compile_to_c.make | grep ^gcc | wc -l) != 0 ]; then
	    grep ^gcc compile_to_c.make | while read cmd; do
		progress 30 2 11 "$cmd"
		run $cmd || exit 1
	    done

	    progress 30 3 11 "compile_to_c T3"
	    ./compile_to_c -verbose -boost compile_to_c -o compile_to_c || exit 1
	    if [ $(cat compile_to_c.make | grep ^gcc | wc -l) != 0 ]; then
		cat compile_to_c.make >> $LOG
		error "The compiler is not stable."
		exit 1
	    fi
	fi
    fi
    cd .. && test -e compile_to_c || ln -s compile_to_c.d/compile_to_c .

    progress 30 4 11 "compile"
    test -d compile.d || mkdir compile.d
    cd compile.d
    run ../compile_to_c -verbose -boost -no_split compile -o compile || exit 1
    grep ^gcc compile.make | while read cmd; do
	run $cmd || exit 1
    done
    cd .. && test -e compile || ln -s compile.d/compile .

    {
	echo 5 se
	echo 6 clean
    } | while read i tool; do
	progress 30 $i 11 "$tool"
	test -d ${tool}.d || mkdir ${tool}.d
	cd ${tool}.d
	run ../compile -verbose -boost -no_split $tool -o $tool || exit 1
	cd .. && test -e ${tool} || ln -s ${tool}.d/$tool .
    done
    {
	echo 7 pretty
	echo 8 short
	echo 9 class_check
	echo 10 finder
    } | while read i tool; do
	progress 30 $i 11 "$tool"
	test -d ${tool}.d || mkdir ${tool}.d
	cd ${tool}.d
	run ../compile -verbose -boost $tool -o $tool || exit 1
	cd .. && test -e ${tool} || ln -s ${tool}.d/$tool .
    done
    progress 30 11 11 "done."
    echo

    title "Compiling plugins"
    cd $LIBERTY_HOME/work
    ./compile_plugins.sh
}

function compile_all()
{
    n=$(ls $LIBERTY_HOME/src/tools/main/*.ace | wc -l)
    i=0
    for f in $LIBERTY_HOME/src/tools/main/*.ace; do
	ace=${f##*/} && ace=${ace%.ace}
	progress 30 $i $n $ace
	cd $LIBERTY_HOME/target/bin/${ace}.d
	run se c -verbose ${ace}.ace
	cd .. && test -e $ace || ln -s ${ace}.d/$ace .
	i=$((i+1))
    done
    progress 30 $n $n "done."
    echo
}

test -d $LIBERTY_HOME/target -a x"$1" != x"-bootstrap" || bootstrap
compile_all