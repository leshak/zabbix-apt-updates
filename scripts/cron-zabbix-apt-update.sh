#!/bin/sh

/etc/zabbix/scripts/apt-updates.sh | zabbix_sender -c /etc/zabbix/zabbix_agentd.conf -i - >/dev/null
