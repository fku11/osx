#!/bin/bash

if [[ $# -eq 0 ]] ; then
    ACCESS_CLIENT="/Users/`whoami`/.fku/system/ss.sh"
else
    ACCESS_CLIENT="$1"
fi

sudo -S sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "DELETE FROM access WHERE client='$ACCESS_CLIENT';"
sudo -S sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT INTO access VALUES('kTCCServiceAccessibility','$ACCESS_CLIENT',1,1,1,NULL);" 

