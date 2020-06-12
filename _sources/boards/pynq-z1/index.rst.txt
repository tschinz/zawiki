==============
Xilinx PYNQ-Z1
==============


.. figure:: img/pynq-z1-1.*
   :align: center
   :width: 300px

.. toctree::
   :glob:
   :maxdepth: 4
   :titlesonly:
   :caption: Content

   *

Additional Informations
=======================

* `PYNQ.io Webpage <http://www.pynq.io>`_
* `PYNQ ReadtheDocs <https://pynq.readthedocs.io>`_
* `PYNQ Github Source Code <https://github.com/xilinx/pynq>`_
* `FINN Deep Neural Network Webpage <https://xilinx.github.io/finn/>`_
* `My Pynq repo <https://github.com/tschinz/pynq_notebooks.git>`_

Introduction
============

* ``PS`` = Processing System
* ``PL`` = Program Logic

Xilinx Zynq FPGA
----------------
The core of a PYNQ Board is a Xilinx ZYNQ-7000 SoC.

* :zawiki_repo:`Zynq-7000 Soc Reference Manual <blob/master/source/boards/pynq-z1/docs/ug585-Zynq-7000-TRM.pdf>`

.. figure:: img/pynq_blockdiagram.*
   :align: center


Start
-----
Program the `SDCard image <http://www.pynq.io/board.html>`_ with `Rufus <https://rufus.ie/>`_

* **JP5** Power Selection  Set to USB
* **JP4** Boot Selection - Set to SDCard

.. figure:: img/pynqz1_setup.*
   :align: center


Hostname
--------

The default hostname is ``pynq``. To change the hostname of the board use to following command and restart the board:

.. code-block:: bash

   # Get current hostname
   hostname
   # Change hostname
   pynq_hostname.sh <NEW HOSTNAME>
   # restart
   shutdown -r now

IP Address
----------

Get Current IP Address

.. code-block:: bash

   hostname -I

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


Jupyter Password
----------------

Jupyter Configuration can be found at: ``/root/.jupyter/jupyter_notebook_config.py``

.. code-block:: python

   # Create Password hash
   from IPython.lib import passwd
   password = passwd("secret")
   > 6c2164fc2b22:ed55ecf07fc0f985ab46561483c0e888e8964ae6

.. code-block:: python
   :caption: jupyter_notebook_config.py

   # Set jupyter notebook password hash
   c.NotebookApp.password =u'sha1:6c2164fc2b22:ed55ecf07fc0f985ab46561483c0e888e8964ae6'

Access
------

+----------+------------+------------+
| Hostname | User       | Password   |
+----------+------------+------------+
| ``pynq`` | ``xilinx`` | ``xilinx`` |
+----------+------------+------------+

Ethernet
^^^^^^^^

There is Jupter and Jupyterlab installed it can be accessed by the browser

* Jupyter Notebooks ``http://192.168.2.99`` or ``pynq.local``
* Jupyterlab Notebooks ``http://192.168.2.99/lab`` or ``pynq.local/lab``

USB
^^^
USB Serial Terminal can be accessed via putta via the microUSB interface. Terminal Settings are:

  * Speed : ``115200 baud``
  * Datasize : ``8 bits``
  * Stopbit : ``1 bit``
  * Parity : ``No parity``
  * Flow : ``No Flow Control``

Samba
^^^^^
Samba, a file sharing service, is running on the board. This allows you to access the Pynq home area as a network drive, to transfer files to and from the board.

.. code-block:: bash

   \\192.168.2.99\xilinx
   # or
   \\pynq.local\xilinx
