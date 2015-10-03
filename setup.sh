#!/bin/bash

git clone https://github.com/fku11/osx ~/.fku
sed -i -e "s/username/`whoami`/g" ~/.fku/com.fku.python.plist
cp ~/.fku/com.fku.python.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.fku.python.plist
launchctl start com.fku.python

