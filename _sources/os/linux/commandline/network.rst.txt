=======
Network
=======

Interfaces
==========

.. code-block:: bash
   :caption: interface

   ifconfig

   ifup <if_name>
   ifup eth0

   ifdown <if_name>
   ifdown eth0

   ifquery -l

NMAP
====

Find open ports on a ip subnet range

.. code-block:: bash
   :caption: nmap

   # Finding ssh server in ip range 192.168.0-192.168.0.255
   nmap -p 22 --open 192.168.1.0/24

ARP-SCAN
========

Finding a machine on your local subnet using DHCP.

.. code-block:: bash
   :caption: arp-scan

   # Finding ssh server in ip range 192.168.0-192.168.0.255
   sudo apr-scan --interface=eth0 --localnet | grep aa:bb:cc:dd:ee:ff
