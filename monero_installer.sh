#!/usr/bin/env bash

rm /usr/local/bin/moner*

for I in `find /opt/monero -executable ! -type d`
do
  I_NAME=`basename "$I"`
  I_PATH="$I"
  ln -fs "$I_PATH" /usr/local/bin/"$I_NAME"
done
