#!/bin/bash

echo "Copy scripts..."
mkdir -p /etc/zabbix/scripts
curl https://raw.githubusercontent.com/leshak/zabbix-apt-updates/master/scripts/apt-updates.sh -o /etc/zabbix/scripts/apt-updates.sh
chmod 0755 /etc/zabbix/scripts/apt-updates.sh
chown -R zabbix. /etc/zabbix/scripts/apt-updates.sh

curl https://raw.githubusercontent.com/leshak/zabbix-apt-updates/master/scripts/cron-zabbix-apt-update -o /etc/cron.daily/cron-zabbix-apt-update
chmod 0755 /etc/cron.daily/cron-zabbix-apt-update
chown -R root. /etc/cron.daily/cron-zabbix-apt-update

echo "Run"
/etc/cron.daily/cron-zabbix-apt-update

echo "Don't forget to add the template to the Zabbix!"
