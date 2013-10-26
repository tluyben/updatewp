updatewp
========

Automatically update all Wordpress installations on a server (including plugins) 

Goal: 

Make sure all WPs and plugins (and themes if you want to) are updated to the latest, preventing all kind of security issues. 

Caution: updating automatically might break sites. It was decided that a broken site for a few hours is less severe than a 0-day hack on one or more of the Wordpress installs on the server. 

You need: 

- Unix server
- Perl
- PHP 
- WP-cli http://wp-cli.org/

Installation: 

Create a user/group who can write to all WPs on your server. 

cd to that directory before executing the stuff below. 

To find all WPs on your server, simple run; 

./findwps.sh > allwps.txt

or 

./findwps.sh /root/of/your/WPs > allwps.txt

the default search path for findwps.sh is /home.

If you have a client hosting situation, you might want to consider running this search weekly as well; maybe someone installed a new Wordpress of which you are not aware. 

Open cron_updatewps and change /root into the home of the user you are using to update all WPs (so the current directory as you are following this). 

Move cron_updatewps to /etc/cron.xxx where xxx = daily, hourly or whatever you want it to be. The wp-cli script is, when there is nothing to update, very light weight, so running hourly works well. 


