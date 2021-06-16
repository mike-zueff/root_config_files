#!/usr/bin/env bash
[[ -d /root/.config/cron_scripts/cron.minutely ]] || mkdir /root/.config/cron_scripts/cron.minutely

chmod u+x /root/.config/cron_scripts/local_delivery_agent.sh
ln --force --symbolic /root/.config/cron_scripts/local_delivery_agent.sh /root/.config/cron_scripts/cron.minutely/local_delivery_agent.sh

chmod u+x /root/.config/cron_scripts/vmtouch.sh
ln --force --symbolic /root/.config/cron_scripts/vmtouch.sh /root/.config/cron_scripts/cron.minutely/vmtouch.sh
