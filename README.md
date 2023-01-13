# DataPower_X3_Migration_Inventory_Data_Gather

This artifact is a script to run on a linux/unix system that contains connectivity to the source DataPower Appliance to take inventory of what is available what requires extra effort for the DataPower X3 upgrade/migration.
Full details of the upgrade/migration may be found in the IBM support technote [How to upgrade the firmware on an IBM WebSphere DataPower Gateway Appliance](https://www.ibm.com/support/pages/knowledge-collection-how-upgrade-firmware-ibm-websphere-datapower-gateway-appliance).  

The output will provide an analysis of effort that will be involved for the upgrade migration.
For example, if the `show features` include the ITX module, the upgrade/migration techote asks for an IBM Support case to be create to obtain the scrypt3 module file to be obtained.  

The following script will gather data from the source appliance that will assist on additional steps for the upgrade/migration: []()
