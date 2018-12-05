#!/bin/sh

set -e

APK_NAME="$1"
TIMEOUT=10000

connect_to_service() {
  nc -w 1 -z "$1" "$2"
}

wait_for_service() {
  local host="localhost"
  local port="5555"
  local output
  printf 'Waiting for %s to become available ... ' "localhost:5555" >&2
  # shellcheck disable=SC2155
  local timeout=$(($(date +%s)+TIMEOUT))
  while ! output="$(connect_to_service "localhost" "5555" 2>&1)"; do
    if [ "$(date +%s)" -gt "$timeout" ]; then
      echo 'timeout' >&2
      if [ ! -z "$output" ]; then
        echo "$output" >&2
      fi
      return 1
    fi
    sleep 1
  done
  echo 'done' >&2
}

while [ $# != 0 ]; do
  wait_for_service "localhost:5555"
  shift
done

adb connect localhost:5555
adb kill-server
timeout 10 adb wait-for-device

A=$(adb shell getprop sys.boot_completed | tr -d '\r')

while [ "$A" != "1" ]; do
        sleep 2
        A=$(adb shell getprop sys.boot_completed | tr -d '\r')
done


adb start-server
adb install app.apk
adb shell monkey -p $APK_NAME -v 1000 > reports/logs.txt
