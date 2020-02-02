=======
Crontab
=======
Crontab is used to regularly execute some task e.g. shell scripts

.. code-block:: bash
   :caption: crontab

   crontab -l    # List crontab's for current user
   crontab -r    # Del  crontab's for current user
   crontab -e    # Edit crontab's for current user

Crontab consist of 2 columns per entry

+--------+------------------------------------+
| Column | Description                        |
+========+====================================+
|   1    | Minutes (0-59)                     |
+--------+------------------------------------+
|   2    | Hours (0-23)                       |
+--------+------------------------------------+
|   3    | Day of the month (1-31)            |
+--------+------------------------------------+
|   4    | Month of the Year (1-12)           |
+--------+------------------------------------+
|   5    | Day of the Week (0-6, 0 is Sunday) |
+--------+------------------------------------+
|   6    | Absolute path to script            |
+--------+------------------------------------+

Crontab entry examples
======================

.. code-block::
   :caption: crontab entries

   0 * * * * /home/user/backupServerA.sh  # At Noon each day
   0 0 * * * /home/user/backupServerB.sh  # At Midnight each day
   0 1 * * * /home/user/backupServerC.sh  # At 1 o'clock each day
   0 * * * 1 /home/user/backupServerD.sh  # At Noon each Monday
   @reboot /home/user/Documents/x11vnc_start.bash
   @reboot nohup airsonos &
   @weekly /home/user/script.bash > /home/user/scriptoutput.log
