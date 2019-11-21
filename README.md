# zabbix_ssl_certificate_monitoring
Monitoring of SSL expiration and issuer - uses starttls - based on other scripts

I needed a script to monitor from a single machine all of the ssl certificates that I needed to keep an eye on.

Install scripts to /etc/zabbix/scripts
Install conf to /etc/zabbix/zabbix_agentd.conf.d/
Install template on server and apply to host
Add a list of domains and protocols in /etc/zabbix/custom_list

