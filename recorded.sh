#!/bin/bash

#url="https://www.youtube.com/watch?v=S1ZdLLPbprk"
url="https://www.twitch.tv/imaqtpie"
touch .start.record

while [ -f .start.record ];
do
    youtube-dl -i -o video/`date +"%Y%m%d%H%M"`.mp4 ${url}
done
