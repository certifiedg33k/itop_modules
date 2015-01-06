#!/bin/bash

# Clear Production 
rm -rf /opt/data/itop/env-production/*

# Copy datamodels
cp /opt/sources/itop/datamodels/datamodel.itop-config-mgmt.xml /opt/data/itop/datamodels/2.x/itop-config-mgmt/
cp /opt/sources/itop/datamodels/datamodel.itop-datacenter-mgmt.xml /opt/data/itop/datamodels/2.x/itop-datacenter-mgmt/
cp /opt/sources/itop/datamodels/datamodel.itop-virtualization-mgmt.xml /opt/data/itop/datamodels/2.x/itop-virtualization-mgmt/
cp /opt/sources/itop/datamodels/en.dict.itop-config-mgmt.php /opt/data/itop/datamodels/2.x/itop-config-mgmt/

# Clear extensions
rm -rf /opt/data/itop/extensions/paneldevices
cp -R /opt/sources/itop/paneldevices /opt/data/itop/extensions/
rm -rf /opt/data/itop/extensions/wirelesslan
cp -R /opt/sources/itop/wirelesslan /opt/data/itop/extensions/
rm -rf /opt/data/itop/extensions/ipdevices
cp -R /opt/sources/itop/ipdevices /opt/data/itop/extensions/            
rm -rf /opt/data/itop/extensions/teemip-ip-mgmt
cp -R /opt/sources/itop/teemip-ip-mgmt /opt/data/itop/extensions/            
rm -rf /opt/data/itop/extensions/teemip-network-mgmt
cp -R /opt/sources/itop/teemip-network-mgmt /opt/data/itop/extensions/            

# Ownerships and permission
chmod 777 /opt/data/itop/conf/production/config-itop.php
chown -R www-data:www-data /opt/data/itop

# MySQL Backup
#mysql -u root -p -e "drop database cmdb"
mysqldump -u root -p cmdb > cmdb.sql
