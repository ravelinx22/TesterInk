#!/bin/sh

set -e

TIMEOUT=10000

is_integer() {
  test "$1" -eq "$1" 2> /dev/null
}

connect_to_service() {
  nc -w 1 -z "$1" "$2"
}

wait_for_service() {
  local host="${1%:*}"
  local port="${1#*:}"
  local output
  if ! is_integer "$port"; then
    printf 'Error: "%s" is not a valid host:port combination.\n' "$1" >&2
    return 1
  fi
  printf 'Waiting for %s to become available ... ' "$1" >&2
  # shellcheck disable=SC2155
  local timeout=$(($(date +%s)+TIMEOUT))
  while ! output="$(connect_to_service "$host" "$port" 2>&1)"; do
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
  if [ "$1" = '-t' ] || [ "$1" = '--timeout' ]; then
    if ! is_integer "$2"; then
      printf 'Error: "%s" is not a timeout integer.\n' "$2" >&2
      exit 1
    fi
    TIMEOUT="$2"
    shift 2
  fi
  if [ "$1" = '--' ]; then
    shift
    exec "$@"
  fi
  wait_for_service "$1"
  shift
done

adb connect localhost:5555
adb kill-server

adb wait-for-device

A=$(adb shell getprop sys.boot_completed | tr -d '\r')

while [ "$A" != "1" ]; do
        sleep 2
        A=$(adb shell getprop sys.boot_completed | tr -d '\r')
done


adb start-server
adb install app.apk
adb shell monkey -p $1 -v 1000
