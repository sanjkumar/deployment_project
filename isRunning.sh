#!/bin/bash
#log monitor

isMysqlRunning() {
        isRunning mysqld
        return $?
}

isApacheRunning() {
        isRunning apache2
        return $?
}

isRunning() {
    PROCESS_NUM=$(ps -ef | grep "$1" | grep -v "grep" | wc -l)
        if [ $PROCESS_NUM -gt 0 ] ; then
            echo  $PROCESS_NUM
            return 1
        else
            return 0
    fi
}