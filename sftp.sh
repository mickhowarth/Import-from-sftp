#!/bin/bash
######## Important!!! Ensure you install 'sshpass' to use this script: sudo apt-get install sshpass ########
#If your SFTP host changes their server you may have to initially sftp to the server manually to manually accept the known hosts update key for the script to run via cron
#ensure the cron is running via the user who manually accepted the key
#I realise there's probably a better way to do this, but it is super unsecuure just to accept all keys and this should only need to be done once in a blue moon 
# if you notice your script not running. 

HOST='sftp.servername.host'   # change the ipaddress accordingly
USER='myusername'   # username also change
#PASSWD='passwordforreference'    # password also change - not using this line in this script but a handy place to keep the pass
sshpass -p 'password-goes-here' sftp -P 2222 $USER@$HOST<<EOF #bash command that connects to the sftp server
cd out # file location on the sftp server
lcd "/home/file_location/" # file location in the receiving machine
mget yourfileplusextention.csv
bye
EOF
