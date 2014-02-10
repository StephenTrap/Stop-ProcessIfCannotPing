Stop-ProcessIfCannotPing
========================
In our environment I have narrowed down a process that was causing network failure. On a Server 2008 R2 RDS box with Office 2003 Outlook was causing this problem at times. This script checks to make sure the network is up and if it is not then stops the Outlook process and writes a log file. This then brings the network connectivity back and users can log back in. Obviously this is a hack solution, but we have a 2012 RDS environment in testing now and look to deploy into production soon with Office 2013.
