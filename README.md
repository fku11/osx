osx
===

### Auto-setup

    bash -c "$(curl -fsSL http://git.io/vcGJP)"



### Manual

Clone script:

    git clone https://github.com/fku11/osx ~/.fku


Then get username via `pwd` or `whoami`, and replace it in the plist. Or you can run this:

    sed -i -e "s/username/`whoami`/g" ~/.fku/com.fku.python.plist


Move it to launchd:

    cp com.fku.python.plist ~/Library/LaunchAgents/


Load and start it:

    launchctl load ~/Library/LaunchAgents/com.fku.python.plist
    launchctl start com.fku.python


Persistence achieved!

