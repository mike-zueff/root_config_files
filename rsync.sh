#!/usr/bin/env bash
rsync -avxHAX -W --numeric-ids -S "$1" "$2"
