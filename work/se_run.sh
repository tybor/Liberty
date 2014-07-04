#!/usr/bin/env bash

cd $(dirname $1)
e=$(basename $1)
exe=${e%.e}.exe
in=${e%.e}.in
sh=${e%.e}.sh
travis_fold=tutorial.$(echo ${1%.e} | sed 's!.*/tutorial/!!;s!/!.!g')

echo travis_fold:start:$travis_fold
echo $1
se c -boost -no_split -o $exe $e || {
    echo travis_fold:end:$travis_fold
    exit 1
}

export PIDFILE=$(mktemp)

(
    ulimit -t 60 2>/dev/null
    test -r $in&& {
        echo '**** Using input:' $in
        exec <$in
    }
    ./$exe
    ret=$?
    rm -f $PIDFILE
    exit $ret
) &
exe_pid=$!

echo $exe_pid > $PIDFILE

ssh_pid=""
test -x $sh && {
    echo '**** Calling shell script:' $sh
    ./$sh $exe_pid &
    sh_pid=$!
}

(
    sleep 30
    test -r $PIDFILE && {
        echo "**** Process $exe takes too long, killing!"
        kill $(<$PIDFILE)
    }
)&
kill_pid=$!

wait $exe_pid
status=$?

{
    kill $kill_pid
    wait $kill_pid
    if [ -n "$sh_pid" ]; then
        kill $sh_pid
        wait $sh_pid
    fi
} 2>/dev/null

rm -f $PIDFILE

test $status -ne 0 && echo 'status='$status
echo travis_fold:end:$travis_fold

exit $status
