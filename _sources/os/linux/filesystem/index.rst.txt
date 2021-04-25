==========
Filesystem
==========

.. figure:: img/logo.*
   :align: center
   :width: 150px

.. toctree::
   :glob:
   :maxdepth: 4
   :titlesonly:
   :caption: Content

   *

Comandline Tools
================

Disk Infos
----------

df
^^

.. code-block:: bash
   :caption: df

   # check partitions and the available space
   df -k
   df -h                           # humand readable

.. code-block:: bash
   :caption: df example

   $ df -h
   Filesystem      Size  Used Avail Use% Mounted on
   udev            7.8G     0  7.8G   0% /dev
   tmpfs           1.6G   12M  1.6G   1% /run
   /dev/sdc1       229G   86G  134G  39% /
   tmpfs           7.8G   46M  7.8G   1% /dev/shm
   tmpfs           5.0M  4.0K  5.0M   1% /run/lock
   tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
   /dev/loop1       97M   97M     0 100% /snap/core/9804
   /dev/loop2       13M   13M     0 100% /snap/dmd/102
   /dev/loop3       13M   13M     0 100% /snap/dmd/99
   /dev/sda1       1.8T  148G  1.6T   9% /mnt/data2
   /dev/sdb1       3.6T  2.2T  1.3T  63% /mnt/data
   tmpfs           1.6G   16K  1.6G   1% /run/user/1000
   /dev/loop4       98M   98M     0 100% /snap/core/9993

fdisk
^^^^^

.. code-block:: bash
   :caption: fdisk

   sudo fdisk -l

.. code-block:: bash
   :caption: fdisk example

   $ sudo fdisk -l

   Disk /dev/sda: 1.8 TiB, 2000398934016 bytes, 3907029168 sectors
   Units: sectors of 1 * 512 = 512 bytes
   Sector size (logical/physical): 512 bytes / 4096 bytes
   I/O size (minimum/optimal): 4096 bytes / 4096 bytes
   Disklabel type: dos
   Disk identifier: 0x000f0848

   Device     Boot Start        End    Sectors  Size Id Type
   /dev/sda1        2048 3907028991 3907026944  1.8T 83 Linux


   Disk /dev/sdb: 3.7 TiB, 4000787030016 bytes, 7814037168 sectors
   Units: sectors of 1 * 512 = 512 bytes
   Sector size (logical/physical): 512 bytes / 4096 bytes
   I/O size (minimum/optimal): 4096 bytes / 4096 bytes
   Disklabel type: gpt
   Disk identifier: 25BCB5B9-0133-4561-AF05-050B47B56F84

   Device     Start        End    Sectors  Size Type
   /dev/sdb1   2048 7814035455 7814033408  3.7T Linux filesystem

lsblk
^^^^^

.. code-block:: bash
   :caption: lsblk

   lsblk

.. code-block:: bash
   :caption: lsblk example 1

   $ lsblk
   NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
   sda      8:0    0 465.8G  0 disk
   ├─sda1   8:1    0    70G  0 part
   ├─sda2   8:2    0     1K  0 part
   ├─sda5   8:5    0  97.7G  0 part /media/4668484A68483B47
   ├─sda6   8:6    0  97.7G  0 part /
   ├─sda7   8:7    0   1.9G  0 part [SWAP]
   └─sda8   8:8    0 198.5G  0 part /media/13f35f59-f023-4d98-b06f-9dfaebefd6c1
   sdb      8:16   1   3.8G  0 disk
   └─sdb1   8:17   1   3.8G  0 part
   sr0     11:0    1  1024M  0 rom

.. code-block:: bash
   :caption: lsblk example 2

   $ lsblk -o NAME,SIZE,TYPE,MOUNTPOINT,STATE,MODEL,UUID
   NAME     SIZE TYPE MOUNTPOINT      STATE   MODEL            UUID
   loop1   96.6M loop /snap/core/9804
   loop2     13M loop /snap/dmd/102
   loop3     13M loop /snap/dmd/99
   loop4   97.1M loop /snap/core/9993
   sda      1.8T disk                 running WDC WD20NPVT-00Z
   └─sda1   1.8T part /mnt/data2                               25c04a96-63f6-4307-800d-66928e4e1261
   sdb      3.7T disk                 running ST4000LM024-2AN1
   └─sdb1   3.7T part /mnt/data                                d56c1a6b-6871-4a27-8051-19747339b9ce
   sdc    232.9G disk                 running Samsung SSD 860
   └─sdc1 232.9G part /                                        3d3920bb-91c7-4632-8fd0-1d87b110a496
   sdd      3.7T disk                 running Rugged USB-C
   └─sdd1   3.7T part                                          88fdbcc0-809a-48c7-bdda-d75cd5f79bb4

Parted
------

Parted is a commandline tool which allows to add, modify, delete

.. code-block:: bash
   :caption: parted

   # Create partition tables
   # GPT
   sudo parted /dev/sda mklabel gpt

   # MBR
   sudo parted /dev/sda mklabel msdos

   # Format a drive fully as ext4
   sudo parted -a opt /dev/sda mkpart primary ext4 0% 100%

   # Format the drive
   mkfs /dev/sda1

.. code-block:: bash
   :caption: parted server

   $ parted

   (parted) unit MiB
   (parted) print

.. list-table::
   :header-rows: 1
   :widths: auto

   * - Command
     - Description
   * - ``unit``
     - Sets the kind of unit. I always use MiB. I always make this my first command.
   * - ``print``
     - Show the disk and partition information, complete with sizes in your selected unit.
   * - ``help``
     - Lists available commands. If followed by a command, gives help on that command's syntax and choices.
   * - ``mklabel``
     - Makes a partition table on the disk. If you use Linux, the type should always be either "msdos" or "gpt".
   * - ``mkpart``
     - Make Partition. You'll be asked primary or secondary, format type, start and end (in your chosen units). Always make sure your unit setting is "MiB". Always make your first partition starts at 1, and if your last one is intended to fill the rest of the disk, make its end be -1, which means end of disk. You can't put in a size directly: You must do the math and put in start and end.
   * - ``rm <#>``
     - Delete partition number <#>, which can be found using the print command. Obviously, use caution.
   * - ``set <number> <flag> <state>``
     - This is how you set flags of partitions. To make partition 1 bootable, perform the following command:
       ``(parted) set 1 boot on``
   * - ``align-check``
     - This queries you whether you want optimal or minimal alignment, and I always say optimal. Then it asks you for the partition number, (which can be found using the ``print`` command), and when you put in the partition number, it reports it as being either aligned or not. Aligned partitions are a good thing for top notch disk performance.
   * - ``quit``
     - Exit the Parted program.

.. list-table::
   :header-rows: 1
   :widths: auto

   * - Command
     - Description
   * - ``lsblk -o +label,fstype,uuid``
     - Command to see all relevant info on all partitions, without being root.
   * - ``mkfs.ext4 -L <mystring> /dev/<partition>``
     - Create an ext4 filesystem, with label ``<mystring>``, on partition ``/dev/<partition>``, where ``<partition>`` is something like ``sda1`` or ``sda2`` or ``sdb1``
   * - ``mkswap -L <mystring> /dev/<partition>``
     - Create a swap filesystem, with label ``<mystring>``, on partition ``/dev/<partition>``, where ``<partition>`` is something like ``sda1`` or ``sda2`` or ``sdb1``

Mounting
--------

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

Wipe Disk
---------

.. code-block:: bash
   :caption: wipe disk

   # unmount disk
   sudo umount /dev/sdXY -l

   # use /dev/random to write Zeros on entire disk§
   sudo dd if=/dev/urandom of=/dev/sdX bs=10M

:tag:`os`
:tag:`linux`
:tag:`filesystem`
