#!/usr/bin/env bash
NULLMAILER_QUEUE="/var/spool/nullmailer/queue"

. /root/.config/rc_files/principal_user.sh

for FILE in `ls "${NULLMAILER_QUEUE}"`
do
  chmod 0777 "${NULLMAILER_QUEUE}/${FILE}"
  chown ${_RC_PRINCIPAL_USER}:${_RC_PRINCIPAL_USER} "${NULLMAILER_QUEUE}/${FILE}"
  head --lines=1 "${NULLMAILER_QUEUE}/${FILE}" | grep --quiet '.@defaulthost\.defaultdomain$'
  [[ ${?} -eq 0 ]] && sed --in-place '1,3d' "${NULLMAILER_QUEUE}/${FILE}"
  mv --force "${NULLMAILER_QUEUE}/${FILE}" "/home/${_RC_PRINCIPAL_USER}/.maildir/cur"
done
