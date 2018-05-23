## About
Cicada (started as Chupacabra) is a lightweight Node.js application with web browser interface
for discovery and monitoring network devices.

Supported protocols: ICMP (ping), SNMP v1/2c/3, WMI, Modbus TCP, IPMI, http/s (plain-text, json, xml) and ftp.

Also you can polling Zabbix, Check-mk and Munin agents and check TCP ports.

This is a Dockerized version of https://github.com/little-brother/cicada

## Usage

     docker run -p5000:5000 -p5001:5001 --env-file .env metasushi/cicada
