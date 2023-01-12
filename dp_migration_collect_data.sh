##************************************************************
## ****  Edit next 3 lines according to your environment *****
##************************************************************
## Hostname or ip address of the DataPower device 
DPHOST=exxample.datapower.com

## The INFILE is created then used each time the SSH connection is made
INFILE=cli.txt

## The filename prefix these will have a date and time stamp added
OUTFILE=cli_output.

##************************************************************

#TODO: Modify DP_ADMIN_USER_ID_HERE to be your 'admin' user, and DP_ADMIN_PASSWORD_HERE to be the 'admin' login password via SSH.
cat << EOF > $INFILE
DP_ADMIN_USER_ID_HERE
DP_ADMIN_PASSWORD_HERE
echo show clock
show clock
echo show version
show version
echo show features
show features
echo show system
show system
echo show network
show network
echo show hsm
show hsm
echo show interface
show interface
echo show link
show link
EOF

# Collecting inventory data for X3 migration.
echo "Data collect started at $DATE" > $OUTFILE
ssh  -T $DPHOST < $INFILE  >> $OUTFILE
mv $OUTFILE $OUTFILE$(date +%Y%m%d-%H%M%S)
rm cli.txt
echo "Created file: " $OUTFILE$(date +%Y%m%d-%H%M%S)

echo "Complete"
