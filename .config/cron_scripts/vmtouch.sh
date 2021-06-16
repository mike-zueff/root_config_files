#!/usr/bin/env bash
. /root/.config/rc_files/principal_user.sh
vmtouch -m 68719476736 -q -t /home/${_RC_PRINCIPAL_USER}/.cache /home/${_RC_PRINCIPAL_USER}/.local /home/${_RC_PRINCIPAL_USER}/.mozilla /home/${_RC_PRINCIPAL_USER}/.thunderbird
