==========
Cheatsheet
==========

.. contents:: :local:

Admin rights
============

.. note::

   In order to gain administrative rights, for a session or only for a command

.. code-block:: bash
   :caption: admin

   sudo su
   sudo "command"
   sudo -s           # Longtime root
   su -              # root preserved env
   sudo !!           # execute previous command as root
   chsh -s /bin/zsh  # change login shell to zsh

Quit
====

.. code-block:: bash
   :caption: quit

   sudo halt          # Sleep
   sudo reboot        # Reboot
   sudo shutdown now  # Shutdown

Mounting
========

For permanent mount see: :ref:`/etc/fstab <config_files_fstab>`

.. code-block:: bash
   :caption: mounting

   sudo vim /etc/fstab             # To edit default mount drives
   sudo fdisk -l           # Drive info
   ls -l /dev/disk/by-uuid         # get Drive UUID's
   mkdir -p /media/d       # make folder for HD
   mount -t vfat -o iocharset-utf8, umask=000 /dev/sda3 /media/d

   mkdir -p /mnt/mountplace
   mount /dev/sda1 /mnt/mountplace

   unmount /mnt/mountplace

   mount -U <UUID>                 # mount drive according to fstab definition

   df -k                           # check partitions and the available space

Wipe Disk
=========

.. code-block:: bash
   :caption: wipe disk

   # unmount disk
   sudo umount /dev/sdXY -l

   # use /dev/random to write Zeros on entire disk§
   sudo dd if=/dev/urandom of=/dev/sdX bs=10M

Environment variables
=====================

They can be set permanently system wide :ref:`/etc/profile <config_files_profile>` or per user shell :ref:`/etc/.bashrc /etc/.zshrc <config_files_user>`

.. code-block:: bash
   :caption: environment variables

   # Licenses
   export LM_LICENSE_FILE=$LM_LICENSE_FILE:portnumber@serverip

   # Print Environmemt variables
   printenv
   echo $name_env_var

   # Set env var
   setenv name value

User
====

.. code-block:: bash
   :caption: user

   # Access to different PC with unknown Password
   chroot path/of/new/systemroot    # change root of FileSys
   # Useful for hacking another PC
   # 1. with LiveUSB / CD login
   # 2. mount HD
   # 3. chroot to his filessystem
   # 4. Change user / password and everything else you want

   # User information
   who                              # returns all users logged in
   whoami                           # return actual username
   id <username>                    # return groups & id's of user

   # Change to user
   sudo -u user2 bash               # open bash of user2

   # Send info
   write <username> <tty>           # write to a logged user
                                    # see command who output

   # Add user
   sudo useradd -d /home/<username> -m <username>

   # Add user to group
   usermod -a -G <groupname> <username>

   # Change user password
   sudo passwd <username>

Alias
=====

.. code-block::
   :caption: alias

   # Set up aliases
   alias <aliasname>="<command>"
   alias ll="ls -la"


Permissions
===========

.. code-block:: bash
   :caption: permissions

   chmod xxx file|folder                # xxx = rwx|xnumber
   chmod -x  file |folder               # add only executable Flag
   chown -R user:group file|folder      # change owner recursively

   find . -type d -exec chmod 755 {} \; # find dir's and set 755
   find . -type f -exec chmod 644 {} \; # find files and set 644

+--------------------------------------+
|                Rights                |
+------+-------+---------+-------------+
| read | write | execute | Abreviation |
+======+=======+=========+=============+
|  -   |   -   |    -    | 0           |
+------+-------+---------+-------------+
|  -   |   -   |    x    | 1           |
+------+-------+---------+-------------+
|  -   |   x   |    -    | 2           |
+------+-------+---------+-------------+
|  -   |   x   |    x    | 3           |
+------+-------+---------+-------------+
|  x   |   -   |    -    | 4           |
+------+-------+---------+-------------+
|  x   |   -   |    x    | 5           |
+------+-------+---------+-------------+
|  x   |   x   |    -    | 6           |
+------+-------+---------+-------------+
|  x   |   x   |    x    | 7           |
+------+-------+---------+-------------+

Threads
=======

**PID = Process ID**

.. code-block:: bash
   :caption: threads

   ps -x                             # view executed threads
   ps -ax | grep name                # search for specific process name
   kill <pidnumber>                  # kill thread with given PID
   kill signal <pidnumber>           # kill with a signal type see table below

+-------------+--------------------------+-------------------------+
| Signal Name | Single Value             | Effect                  |
+=============+==========================+=========================+
| ``SIGHUP``  | ``1``                    | Hangup                  |
+-------------+--------------------------+-------------------------+
| ``SIGINT``  | ``2``                    | Interrupt from keyboard |
+-------------+--------------------------+-------------------------+
| ``SIGKILL`` | ``9``                    | Kill signal             |
+-------------+--------------------------+-------------------------+
| ``SIGTERM`` | ``15``                   | Termination signal      |
+-------------+--------------------------+-------------------------+
| ``SIGSTOP`` | ``17``, ``19``, ``23``   | Stop the process        |
+-------------+--------------------------+-------------------------+

General
=======

.. code-block:: bash
   :caption: general

   uname -a                           # Distribution & Kernel informations
   whereis command                    # returns location of command

   mkdir /existing/path/dirname       # creates a directory
   mkdir -p /non/existing/path/name   # creates a directory path
   mkdir -p project/{lib/ext,bin,src,doc/{html,info,pdf},demo/stat/a}
                                      # creates a tree structure
   pwd                                # print working directory
   ls                                 # list content
   ls -la                             # list flags
   ll                                 # short list flags
   cd                                 # change dir
   rm name                            # remove file
   rm -r                              # remove directory with content
   rm -R name                         # remove recursively folder with its content
   rm !(delete_all_but_this)          # delete all except !()
   cp source/path /dest./path         # copy file
   cp -R source/path dest./path       # copy directory with content
   cp -R --preserve=mode,ownership,timestamp  source/path dest/path
                                      # copy with preserving owner and permission and time

   df                                 # show disk sizes
   df -H                              # show disk sizes in KB, MB, GB


   diff path/to/file1 path/to file2   # compare file1<->file2 and shows the difference
   sdiff path/to/file1 path/to file2  # compare file1<->file2 and merge directly


Find / Which
============

.. code-block:: bash
   :caption: find and which

   # finding and delete all folder with <foldername> and it's content
   find -type d -iname "<foldername>" -exec rm -rf {} \;
   # finding and delete all files with <filename> and it's content
   find -type f -iname "<filename>" -exec rm -rf {} \;
   # finding all files and directories within a directory
   find /etc
   # finding all files within a directory
   find /etc -type f
   # finding all files with a suffix
   find /etc -type f -name "*.conf"

   # Find location of a program
   which zsh

Grep
====

Grep let you search for word in files and outputs the line it was found.

.. code-block:: bash
   :caption: grep

   grep boo /etc/passwd         # search boo in for /etc/passwd
   grep -r "192.168.1.5" /etc/  # search recursivaly in /etc for 192.168.1.5
   grep -w "boo" /path/to/file  # search for word "boo" only

grep is also often uses in pipes to search within the output of an other command

.. code-block:: bash
   :caption: grep pipe

   cat /proc/cpuinfo | grep -i 'Model' # display CPU Model name
   ps -x | grep vnc

.. note::

   **Flags**

   * ``-r`` : search recursively in all files \\
   * ``-n`` : display line number \\
   * ``-c`` : count number of times found \\
   * ``--color`` : colors the word searched in the results


Links
=====

.. code-block:: bash
   :caption: links

   ln target-filename symbolic-filename    # create hardlink
   ln -s target-filename symbolic-filename # create softlink

.. note::

   **Hard Link vs Softlink**

   Symbolic links are different from hard links. Hard links may not normally point to directories, and they cannot link paths on different volumes or file systems. Hard links always refer to an existing file.

Compression
===========

Tar, bz2, gz
------------

.. code-block:: bash
   :caption: compress

   tar cfv name.tar /path/to/folder      # Compression tar
   tar xfv tarfile                       # Decompression tar

   tar cfvz name.tar.gz /path/to/folder  # Compression tar.gz
   tar xfvz tarfile                      # Decompression tar.gz

   tar cfvj name.tar.bz2 /path/to/folder # Compression tar.bz2
   tar xfvj tarfile                      # Decompression tar.bz2


.. note::

   **Flags**

   * ``c`` = Compression | ``x`` = eXtraction
   * ``f`` = file/folder
   * ``v`` = Verbose
   * ``j`` = bz2 | ``z`` = gz
   * ``p`` = Preserve (keep permissions)

RAR
===

.. code-block:: bash
   :caption: compress rar

   # compress and split in files of 700MB
   rar a -m5 -v700m rarname folder_or_file_to_compress

   # uncompress, if a split rar uncompress the first
   rar e rarname


.. note::

   **Flags**

   * ``m5`` = highest compression ``m0`` = lowest compression
   * ``e`` = extract in current folder
   * ``a`` = append to rar
   * ``v<SIZE>m`` = size of split files

In Outputs
==========

Tail
----

.. code-block:: bash
   :caption: tail

   tail file|folder                # give end of a file
   ./executable > output.txt       # redirect output to a file
   ./executable > output.txt 2<&1  # redirect output to a file output 2 & 1
                                   # 2 = Error output
                                   # 1 = Std output

Cat
---

.. code-block:: bash
   :caption: cat

   cat > file1.txt                         # To Create a new file
   cat >> file1.txt                        # To Append data into the file
   cat file1.txt                           # To display a file
   cat file1.txt file2.txt                 # Concatenate several files and display
   cat file1.txt file2.txt > file3.txt     # To cat several files and transfer output to another file

PGP Pretty Good Privacy & GPG
=============================

see also :doc:`/security/gnupg`

Files
-----

.. code-block:: bash
   :caption: pgp files

   /home/user/.ssh
   pgp                             # private key
   pgp.pub                         # public key
   gpg_fingerprint.txt             # Infos for the gpg fingerprint

Create PGP files
----------------

.. code-block:: bash
   :caption: create key's

   ssh-keygen -t dsa -f filename   # Create private and public key
   gpg --gen-key                   # Create gpg fingerprint

GPG Privacy
-----------

.. code-block:: bash
   :caption: gpg

   gpg --gen-key               # Create a key
   gpg --export -a "User Name" > public.key# Export a public key
   gpg --export-secret-key -a "User Name" > private.key# Export private key
   gpg --import public.key         # Import public key
   gpg --allow-secret-key-import --import private.key# Import private key
   gpg --delete-key "User Name"        # Delete public key
   gpg --delete-secret-key "User Name" # Delete private key
   gpg --list-keys             # List key in public key ring
   gpg --list-secret-keys          # Lsit key in private key ring
   gpg --fingerprint > fingerprint     # Short list of numbers to verify public key
   gpg -e -u "Sender User Name" -r "Receiver User Name" somefile # Encrypt data
   gpg -d mydata.tar.gpg           # Decrypt data

SSH
===

.. code-block:: bash
   :caption: ssh_config

   # Edit config file
   sudo vim /etc/ssh/sshd_config

   # start, stop, restart SSH
   sudo /etc/init.d/ssh start
   sudo /etc/init.d/ssh stop
   sudo /etc/init.d/ssh restart

.. code-block:: bash
   :caption: ssh

   ssh-agent bash          # start new bash agent
   ssh-add privatekey      # key you want to use for that session
                # without a given key he search for ~/.ssh/id_rsa

Connect to another station by ssh by default a password is needed or if configured no password but with rsh keys

.. code-block:: bash
   :caption: ssh connection

   ssh -p <portnumber> -l <username> server.address.com

   # or
   ssh -p <portnumber> user@server.address.com

   # or with port forward and no commandline
   ssh -N -T -L <port>:localhost:<port> <user>@<hostname>
   -N = No Output
   -T = No Terminal access
   -L = Port Forwarding

   # or with port forward and commandline
   ssh -L <port>:localhost:<port> <user>@<hostname>

How to set up ssh with rsa keys

.. code-block:: bash
   :caption: ssh keys

   # Generating RSA Key pair
   ssh-keygen -t rsa

   # Copy key
   ssh-copy-id -i ~/.ssh/id_rsa.pub "user@remote.machine.com -p <portnumber>"
   # OR
   scp id_rsa.pub user@host:~/.ssh/machine.pub

   # Append key to file authorized_keys
   cat ~/.ssh/*.pub | ssh admin@server.machine.com -p <portnumber> 'umask 077; cat >>.ssh/authorized_keys'

SCP
===

Transferring file through SSH
For these command you have to use either the PW or already bash started

.. code-block:: bash
   :caption: scp

   # Synchronising directories
   rsync -avr -P --rsh='ssh -p YYYY' /localpath/to/dir user@host:/remotepath/to/dir

   # Host -> Remote
   scp sourceFile user@host:/directory/targetFile
   scp -R sourceFolder user@host:/directory/targetFolder
   scp -P port sourceFile user@host:/directory/targetFolder

   # Remote -> Host
   scp user@host:/directory/sourceFile targetFile
   scp -R user@host:/directory/sourceFolder targetFolder
   scp -P port user@host:/directory/sourceFolder targetFolder



