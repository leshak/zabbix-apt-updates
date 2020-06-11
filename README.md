# Zabbix template for monitoring APT package updates.

Template for monitoring APT Regular packages updates and Security packages updates, Updates are checked using APT UpdateNotifier package; On Ubuntu the package is installed by default but on Debian is not, you need to install the update-notifier-common package. 

# Requirements

1. Install the zabbix-sender & update-notifier-common packages `sudo apt-get install zabbix-sender update-notifier-common`

# Installation

1. One script
    ```
    curl -fsSL https://raw.githubusercontent.com/leshak/zabbix-apt-updates/master/install.sh | sudo bash -
    ```

2. Import template