#!/bin/sh

adb connect localhost:5555
adb kill-server
adb start-server
calabash-android run app.apk
