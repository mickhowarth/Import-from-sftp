Simple script to connect to an sftp server and download a file from the source to your local server.
Set this up as a cron to run regularly.

I couldn't find a way to safely accept known hosts automatically so not ideal for crons if your target sftp server changes regularly. 
The easy workaround is to initially login manually to the host server using the same user your local (target) machine will use, accept the known hosts at login if you're happy - then the script will run no problems at all as it will in future be connecting to the machine you've already verified as a known host.
