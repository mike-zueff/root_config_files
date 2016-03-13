#!/usr/bin/env bash
. /root/.config/cron_scripts/private_rc_file.sh

for FILE in `ls /var/nullmailer/queue`
do
  sed --in-place "1,3d" /var/nullmailer/queue/${FILE}
  chmod 0777 /var/nullmailer/queue/${FILE}
  chown ${_RC_ADDRESSEE}:${_RC_ADDRESSEE} /var/nullmailer/queue/${FILE}
  mv --force /var/nullmailer/queue/${FILE} /home/${_RC_ADDRESSEE}/.maildir/cur
done
