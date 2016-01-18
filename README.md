Business Intel App
==================

Intent of the application
-------------------------
The intent of this application is to retrieve files that are stored on Amazon s3, load them into a database and create some tables on the web
we want the data to be portable and visable anywhere.


Script Flow
-----------
I'm fairly new to coding so this might not make sense.. I've saved all of the scripts that do something with data into a folder called "Scripts"
Each one of these should be executed at a certain time by a cron job in this order.
+ //TODO: Create a database configuration script. 
+ //TODO: Hide configuration variables in here. Anyone could just grab them.
1.  db_create.pl: Kind of like a rake file. This will control the setup but not configuration of the database
2.  data_update.pl: This will pull the data from s3. You will want to configure a new s3 bucket in here
3.  db_update.pl: This will parse all the data from the CSV files to the database

