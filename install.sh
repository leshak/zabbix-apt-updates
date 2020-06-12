#!/bin/bash

echo "Copy scripts..."
mkdir -p /etc/zabbix/scripts
curl https://raw.githubusercontent.com/leshak/zabbix-apt-updates/master/scripts/apt-updates.sh -o /etc/zabbix/scripts/apt-updates.sh
chmod 0755 /etc/zabbix/scripts/apt-updates.sh
chown -R zabbix. /etc/zabbix/scripts/apt-updates.sh

curl https://raw.githubusercontent.com/leshak/zabbix-apt-updates/master/scripts/cron-zabbix-apt-update.sh -o /etc/zabbix/scripts/cron-zabbix-apt-update.sh
chmod 0755 /etc/zabbix/scripts/cron-zabbix-apt-update.sh
chown -R root. /etc/zabbix/scripts/cron-zabbix-apt-update.sh

echo "Add to cron job"
echo "4 */4    * * *   root    /etc/zabbix/scripts/cron-zabbix-apt-update.sh" >> /etc/crontab
systemctl restart cron

echo "Run once"
/etc/zabbix/scripts/cron-zabbix-apt-update.sh

echo "Don't forget to add the template to the Zabbix!"
