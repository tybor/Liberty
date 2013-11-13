# to be sourced by bash tools.

export EXE_SUFFIX=''
export OS=UNIX
if test -x /usr/bin/cygpath.exe; then
    # Cygwin specific
    EXE_SUFFIX=".exe"
    OS=Cygwin
    flavor=generic
else
    flavor=`uname -s`
fi

if [ x$plain == x ]; then
    plain=FALSE
fi
if [ x"$(tty)" == "not a tty" ]; then
    plain=TRUE
fi
if [ $plain != TRUE ]; then
    eval `tset -s`
    tput init
fi

bold() {
    test $plain != TRUE && tput bold
}

normal() {
    test $plain != TRUE && tput sgr0
}

italic() {
    test $plain != TRUE && tput sitm
}

underline() {
    test $plain != TRUE && tput smul
}

foreground() {
    if test $plain != TRUE; then
        case $1 in
            black)
                tput setaf 0
                ;;
            red)
                tput setaf 1
                ;;
            green)
                tput setaf 2
                ;;
            yellow)
                tput setaf 3
                ;;
            blue)
                tput setaf 4
                ;;
            magenta)
                tput setaf 5
                ;;
            cyan)
                tput setaf 6
                ;;
            white)
                tput setaf 7
                ;;
        esac
    fi
}

background() {
    if test $plain != TRUE; then
        case $1 in
            black)
                tput setab 0
                ;;
            red)
                tput setab 1
                ;;
            green)
                tput setab 2
                ;;
            yellow)
                tput setab 3
                ;;
            blue)
                tput setab 4
                ;;
            magenta)
                tput setab 5
                ;;
            cyan)
                tput setab 6
                ;;
            white)
                tput setab 7
                ;;
        esac
    fi
}

title() {
    if test $plain = TRUE; then
        echo "== $1 =="
    else
        tput el
        foreground blue
        bold
        echo "$1"
        foreground black
        normal
    fi
}

show_status() {
    if test $plain = TRUE; then
        if test $1 = 0; then
            echo "    OK"
        else
            echo "    KO"
        fi
    else
        tput el
        if test $1 = 0; then
            tput setaf 2
            echo "    OK"
        else
            tput bold
            tput setaf 1
            echo "    KO"
        fi
        tput setaf 0
        tput sgr0
        echo
    fi
}

progress() {
    size=$1
    current=$2
    max=$3
    label="$4"
    echo '~~~~ '$label' ~~~~' >> $LOG
    if test $plain = TRUE; then
        awk 'BEGIN {
                printf(" * %02d/%02d: %s\n", '$current', '$max', "'"$label"'");
                exit;
             }' </dev/null
    else
        col=`expr \`tput cols\` - $size - 11`
        tput setaf 0
        tput sgr0
        awk 'BEGIN {
                fill=int('$size' * '$current' / '$max' + .5);
                printf(" '`tput bold`'%3.1f%%'`tput sgr0`'\t'`tput setab 6`'", 100*'$current'/'$max');
                for (i=0;    i<fill; i++) printf(" ");
                printf("'`tput setab 4`'");
                for (i=fill; i<'$size'; i++) printf(" ");
                printf("'`tput sgr0`' '`tput setaf 5`'%-'$col'.'$col's'`tput sgr0`' \r", "'"$label"'");
                exit;
             }' </dev/null >/dev/tty
    fi
}

error_message() {
    if test $plain != TRUE; then
        tput el
        tput setaf 1
        tput bold
    fi
    echo "$1" | tee -a $LOG
    echo "$2" | tee -a $LOG
    if test $plain != TRUE; then
        tput setaf 0
        tput sgr0
    fi
}

error() {
    error_message "$2 failed with status $1" "Please look at $LOG"
}

run() {
    echo "$(date) - $@" >> $LOG
    if eval "$*" >>$LOG 2>&1; then
        status=0
    else
        s=$?
        error $s "$1"
        status=1
    fi
    return $status
}

ok() {
    return
}
