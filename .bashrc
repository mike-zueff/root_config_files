# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

cd /tmp/volatile
. /root/.config/rc_files/principal_user.sh
export BC_ENV_ARGS=/home/${_RC_PRINCIPAL_USER}/.config/bcrc
export GPG_TTY=$(tty)

bind 'set bell-style none'

. /home/${_RC_PRINCIPAL_USER}/.config/rc_files/git_common.sh
. /home/${_RC_PRINCIPAL_USER}/.config/rc_files/ssh.sh
. /home/${_RC_PRINCIPAL_USER}/.config/rc_files/tor.sh
