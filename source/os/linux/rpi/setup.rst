=========
Setup Rpi
=========

Raspi-conf
==========

The integrated Rpi config tool for many things.

.. code-block:: bash

   raspi-config

Wifi Dongle
===========

Setup
-----

.. code-block:: bash
   :caption: /etc/network/interfaces
   :linenos:

   auto lo

   iface lo inet loopback
   iface eth0 inet dhcp

   allow-hotplug wlan0
   auto wlan0


   iface wlan0 inet dhcp
           wpa-ssid "ssid"
           wpa-psk "password"

For static IP address
---------------------

.. code-block:: bash
   :caption: /etc/network/interfaces
   :linenos:

   iface eth0 inet static
   address <static-ip>
   netmask 255.255.255.0
   network 192.168.0.0
   broadcast 192.168.0.255
   gateway 192.168.0.1

Disable Power saving mode
=========================

.. code-block:: bash
   :caption: /etc/modprobe.d/8192cu.conf

   # Disable power saving
   options 8192cu rtw_power_mgnt=0 rtw_enusbss=1 rtw_ips_mode=1

SSH
===
See also :doc:`/os/linux/commandline/ssh`

Set up Hostname
---------------

Setting up your Raspberry with a hostname can be very useful if it is connected to a network with DHCP Server. Instead of searching for the IP of the RPi you can find it by it's hostname.

* install samba and the samba tools

  .. code-block:: bash

     sudo apt-get install samba samba-common-bin
     sudo apt-get install netatalk # for avahi setup for mac

* change the hostname in the following files

  .. code-block:: bash

     sudo vim /etc/hostname
     sudo vim /etc/hosts
     # or
     sudo hostname <new_host_name>

* restart hostname service

  .. code-block:: bash

     sudo service hostname.sh start

Now you can connect to your RPi with your hostname

SSH Connect
-----------

Regenerate ssh keys to be safe

.. code-block:: bash

   rm /etc/ssh/ssh_host_* && dpkg-reconfigure openssh-server

Connect via remote PC

.. code-block:: bash

   ssh pi@<hostname>
   # or for mac
   ssh <hostname>.local -l <username>

Resolve ssh lang issue
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash
   :caption: /etc/ssh/ssh_config

   # Comment the following line
   # SendEnv LANG LC...

Add the following environment variables into your ``~/.bash_profile``

.. code-block:: bash
   :caption: ~/.bash_profile

   export LANG="en_US"
   export LANGUAGE=$LANG
   export LC_ALL=$LANG

Source ``.bashrc`` file upon ssh logon
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Add the following line to the ``~/.bash_profile``

.. code-block:: bash
   :caption: ~/.bash_profile

   source $HOME/.bashrc

GUI
===

Launch GUI

.. code-block:: bash

   startx

Important stuff
===============

.. code-block:: bash

   sudo apt-get install vim git tightvncserver

Interconectivity
================

Enable i2c

.. code-block:: bash
   :caption: /etc/modules

   i2c-bcm2708
   i2c-dev

Remove SPI and I2C from the blacklist

.. code-block:: bash
   :caption: /etc/modprobe.d/raspi.blacklist.conf

   # Comment out both line to remove from blacklist
   # blacklist spi-bcm2708
   # blacklist i2c-bcm2708

Python modules
==============

General
-------

.. code-block:: bash

   sudo apt-get install python-dev

GPIO
----

.. code-block:: bash

   sudo apt-get install python-rpi.gpio # GPIO Module

I2C
---

.. code-block:: bash

   sudo apt-get install python-smbus # SMBus support
   sudo apt-get install i2c-tools    # I2C support
   sudo i2cdetect -y 0               # Detect I2C on RPi v2

:tag:`os`
:tag:`linux`
:tag:`raspberry pi`
:tag:`setup`