#!/bin/bash

rm -f -r .start.record

DLPID=`ps -ef | grep "youtube-dl" | grep -v "grep" | awk '{print $2}'`
FFM_PID=`ps -ef | grep "ffmpeg" | grep -v "grep" | awk '{print $2}'`

if [ -n "${FFM_PID}" ]; then
    kill -SIGINT ${DLPID}
fi
