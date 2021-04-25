=======
Systemd
=======

List services
=============

.. code-block:: bash

   systemctl --type=service

Status service
==============

.. code-block:: bash

   systemctl status firewalld.service

Start Stop Service
==================
.. code-block:: bash

   systemctl stop firewalld.service
   systemctl status firewalld.service

Add Service
===========
.. code-block:: bash

   cd /etc/systemd/system
   sudo vim jupyterlab.service

Add in vim file
===============

.. code-block:: ini

   [Unit]
   Description = Jupyterlab service
   After = network.target
   StartLimitIntervalSec=0

   [Service]
   Type=simple
   User=zas
   ExecStart=/home/zas/Documents/jupyterlab_start.bash

   [Install]
   WantedBy = multi-user.target

Start Service manually
======================

.. code-block:: bash

   systemctl start jupyterlab

Start Service on boot
=====================

.. code-block:: bash

   systemctl enable jupyterlab


:tag:`os`
:tag:`linux`
:tag:`tools`
:tag:`systemd`
:tag:`systemctl`