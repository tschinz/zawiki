=======
Scripts
=======

Here you can dowload some example files for Linux. It can be neither Scripts or Links or config files

A lot of scripts and configurations can be found in my config repo:

* :config_repo:`Shell Scripts <tree/master/scripts/shell>`

Shell Bang
==========

At the beginning of a file there need to be a line to indentify the program or the file. ``#!<path of the program executable>``

.. code-block:: bash

   #!/bin/sh

.. code-block:: bash

   #!/bin/bash

.. code-block:: bash

   #!/usr/bin/env python

Script End
==========

.. code-block:: bash

   exit 0

Variables
=========

.. code-block:: bash
   :linenos:
   :caption: variables

   # Var
   SEPARATOR='--------------------------------------------------------------------------------'
   INDENT='  '

   # Array
   MOUNT_POINTS=( 'elem1' 'elem2')

   # Use Env var
   Linux_user="$USER"

Command line arguments
======================

.. code-block:: bash
   :linenos:
   :caption: cli arguments

   usage='Usage: script.bash [-v] [-h]'
   usage="$usage\n\t[-n input_n] [-u input_u]"

   while getopts "n:u:vh" options; do
     case $options in
       n ) var_n=$OPTARG;;
       u ) var_u=$OPTARG;;
       v ) verbose=1;;
       h ) echo -e $usage
             exit 1;;
       * ) echo -e $usage
             exit 1;;
     esac
   done

   if [ -n "$verbose" ] ; then
     echo "Verbose"
   fi

Functions
=========

.. code-block:: bash
   :linenos:
   :caption: functions

   # Define function
   function test () {
     local arg1=$1 ; local arg2=$2

     $result = $arg1 + $arg2

     return 1
   }

   # Usage function
   test 1 2

Console prints
==============

Display message welcome on screen

.. code-block:: bash
   :linenos:
   :caption: echo

   # Console print
   echo 'Welcome'

   # Write message File deleted to /tmp/log.txt
   echo 'File has been deleted' > /tmp/log.txt

   # Append message File deleted /tmp/log.txt
   echo 'File has been deleted' >> /tmp/log.txt

   # Append message and command output on screen, print variable
   echo "Today's date is $(date)"

User Inputs
===========

.. code-block:: bash
   :linenos:
   :caption: user inputs 1

   echo -n "Please enter: "

   stty -echo
   read user_text
   stty echo

   echo ""         # force a carriage return to be output

.. code-block:: bash
   :linenos:
   :caption: user inputs 1

   read -n1 -r -p "Press space to continue..." key
   if [ "$key" = '' ]; then
       # Space pressed, do something
       # echo [$key] is empty when SPACE is pressed # uncomment to trace
   else
       # Anything else pressed, do whatever else.
       # echo [$key] not empty
   fi

Check and create folder
=======================

.. code-block:: bash
   :caption: check and create folder
   :linenos:

   if [ ! -d "/folder/location" ]; then
     sudo mkdir /folder/location
   fi

Lockfile
========

Lockfiles you can wait until another process is finished.

.. code-block:: bash
   :caption: check and create folder
   :linenos:

   # Define path and lockfile
   lockDir="/path/to/lock_files"
   lockFilePath="$lockDir/lockfile.lock"
   # Loop until file no longer exist
   while [ -e "$lockFilePath" ]
   do
      exit
   done

   # Create new lockfile
   touch $lockFilePath

   TO SOMETHING THE LOCK IS YOURS

   # Remove lockfile
   rm -f $lockFilePath

Samples
=======

.. code-block:: bash

   DIR="$( cd "$( dirname "$0" )" && pwd )" # get dir of executed file
