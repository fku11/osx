#!/bin/bash

launchctl stop com.fku.python
launchctl unload ~/Library/LaunchAgents/com.fku.python.plist 
launchctl remove com.fku.python

rm -rf ~/Library/LaunchAgents/com.fku.python.plist
rm -rf ~/.fku/

