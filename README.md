ODM Queuing Script
==================

This script will track photo uploads to a server and add them to a queue for ODM processing. It is executed by a incron job. 

Important stuff:

under incrontab -e, paste this:
    var/www/html/sites/default/files/dmb2 IN_CREATE /home/dmb2/odm_queue/odm_q.sh $@ $#

~~Then it will email the user with a link to the download.~~ Coming soon...

For questions, email: dmb2@clevelandmetroparks.com

