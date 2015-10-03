#!/bin/bash

if [[ $# -eq 0 ]] ; then
    ACCESS_CLIENT="/Users/`whoami`/.fku/ss.sh"
else
    ACCESS_CLIENT="$1"
fi

sudo -S sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "delete from access where client='$1';"
sudo -S sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT INTO access VALUES('kTCCServiceAccessibility','$1',1,1,1,NULL);" 


