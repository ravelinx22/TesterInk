#!/bin/sh

adb connect localhost:5555
adb kill-server
adb start-server
adb install app.apk
adb shell monkey -p $1 -v 1000
