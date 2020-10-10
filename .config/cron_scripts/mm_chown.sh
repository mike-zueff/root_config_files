#!/usr/bin/env bash
. /root/.config/rc_files/principal_user.sh
chown --no-dereference --recursive ${_RC_PRINCIPAL_USER}:${_RC_PRINCIPAL_USER} "/home/${_RC_PRINCIPAL_USER}/Nextcloud/nosync/mm/big_data" || true
