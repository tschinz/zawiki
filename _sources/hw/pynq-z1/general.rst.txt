=======
General
=======

Hostname
========

The default hostname is ``pynq``. To change the hostname of the board use to following command and restart the board:

.. code-block:: bash

   # Get current hostname
   hostname
   # Change hostname
   pynq_hostname.sh <NEW HOSTNAME>
   # restart
   shutdown -r now

IP Address
==========

Get Current IP Address

.. code-block:: bash

   hostname -I

Ethernet
--------

Change Static IP Address

.. code-block:: bash

   vim /etc/network/interfaces.d/eth0

For DHCP

.. code-block::

   auto eth0
   iface eth0 inet dhcp

   auto eth0:1
   iface eth0:1 inet dhcp

For new static IP

.. code-block::

   auto eth0
   iface eth0 inet dhcp

   auto eth0:1
   iface eth0:1 inet static
   address <new-ip-address>
   netmask <new-subnew-mask>

Wifi
----

.. code-block:: bash

   vim /etc/network/interfaces.d/wlan0

.. code-block::

   iface wlan0 inet dhcp
    wpa-ssid <ssid>
    wpa-psk <password>

You can edit this file via a python cell in a notebook

.. code-block:: python

   from pynq.lib import Wifi
   port = Wifi()
   port.connect('wifiNetworkNameGoesHere', 'wifiNetworkPasswordGoesHere')

Activate and deactivate wifi if setup

.. code-block:: bash

   sudo ifdown wlan0
   sudo ifup -v wlan0

Check wifi connection

.. code-block:: bash

   iwconfig
   iw wlan0 info

Jupyter
=======

Configuration
-------------
Jupyter Configuration can be found at:

.. code-block:: bash

   /root/.jupyter/jupyter_notebook_config.py

Jupyter Password
----------------

.. code-block:: python

   # Create Password hash
   from IPython.lib import passwd
   password = passwd("secret")
   > 6c2164fc2b22:ed55ecf07fc0f985ab46561483c0e888e8964ae6

.. code-block:: python
   :caption: jupyter_notebook_config.py

   # Set jupyter notebook password hash
   c.NotebookApp.password =u'sha1:6c2164fc2b22:ed55ecf07fc0f985ab46561483c0e888e8964ae6'

Service
-------

Jupyter is started automatically by a ``systemctl`` service. The start script can be found at

.. code-block::

   /usr/local/bin/start_jupyter.sh

.. code-block:: bash

   sudo systemctl status jupyter.service
   sudo systemctl start jupyter.service
   sudo systemctl stop jupyter.service

In case of problems the log file of ``systemctl`` can be access with the following command:

.. code-block:: bash

   sudo journalctl -u jupyter.service

.. code-block::

   /var/log/jupyter.log

:tag:`hardware`
:tag:`pynq-z1`