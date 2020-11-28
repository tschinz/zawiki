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

Important Linux Commands
------------------------

.. code-block:: bash

   # Shutdown
   shutdown now

   # Restart
   shutdown -r now

Xilinx Zynq FPGA
----------------

The core of a PYNQ Board is a Xilinx ZYNQ-7000 SoC.

* :znotes_repo:`Zynq-7000 Soc Reference Manual <blob/master/source/boards/pynq-z1/docs/ug585-Zynq-7000-TRM.pdf>`

.. figure:: img/pynq_blockdiagram.*
   :align: center


Start
-----

Program the `SDCard image <http://www.pynq.io/board.html>`_ with `Rufus <https://rufus.ie/>`_

* **JP5** Power Selection  Set to USB
* **JP4** Boot Selection - Set to SDCard

.. figure:: img/pynqz1_setup.*
   :align: center

Access
------

By default access is grated with the following account

+----------+------------+------------+
| Hostname | User       | Password   |
+----------+------------+------------+
| ``pynq`` | ``xilinx`` | ``xilinx`` |
+----------+------------+------------+

Ethernet
^^^^^^^^

There is Jupter and Jupyterlab installed it can be accessed by the browser

* Jupyter Notebooks `http://192.168.2.99 <http://192.168.2.99>`_ or `pynq.local <pynq.local>`_
* Jupyterlab Notebooks `http://192.168.2.99/lab <http://192.168.2.99/lab>`_ or `pynq.local/lab <pynq.local/lab>`_

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
