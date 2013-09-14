Dell Fan Cron Job
================

This script written for Dell Inspiron Laptops. In my laptop CPU Fan is allways running at top speed. So I write a script to control cpu heat and manage fan speed with a cron job.

###**Requirements** 

1) You must have loaded the i8k module
Ubuntu: sudo modprobe -v i8k
2) You must also install i8kctl
Ubuntu: sudo apt-get install i8kctl
3) After Installing i8kctl you must run this line: 
sudo sed -i.bak 's/ENABLED=0/ENABLED=1/' /etc/default/{i8kmon,i8kbuttons}

###**Installation**

If you want to run your cron job for all users you must open crontab with root user.

sudo crontab -e

Then add this line;

01 * * * * sh /path/to/script/del-fan-cron.sh

**Note:** I'm using Dell Inspiron 5110 and it has only right fan. So i didn't manage second fan. If your laptop has second fan, you must edit this script.
