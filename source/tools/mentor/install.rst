=============
Install Linux
=============

Both tools are mostly installed at the same time. Download the latest Software on the `SupportNet <https://support.sw.siemens.com>`_

.. information::

   Tested on Lubuntu 20.04 LTS

Modelsim
========
Download Modelsim: https://support.sw.siemens.com/de-DE/product/852852093/downloads

Prerequisies
------------

Install
-------

Copy ``modelsim*.aol`` to ``~/Downloads/``

.. code-block:: bash

   cd ~/Downloads
   chmod +x modelsim*.aol
   sudo ./modelsim*.aol

Options:

.. code-block:: raw
   :capton: Target location

   /usr/opt/Modelsim

.. figure:: img/modelsim_install_1.*
   :align: center
   :width: 70%

Select 64bit Modelsim

.. figure:: img/modelsim_install_2.*
   :align: center
   :width: 70%



Cleanup
-------

Cleanup the Mentor installer

.. code-block:: bash

   sudo su
   rm -R /root/mgc
   exit

Test
----

.. code-block:: bash

   export PATH=$PATH:/usr/opt/Modelsim/modeltech/bin
   export LM_LICENSE_FILE=$LM_LICENSE_FILE:27001@mentorlm.hevs.ch

   vsim &

HDL Designer
============

Download HDL Designer: https://support.sw.siemens.com/de-DE/product/862138546/downloads


Prerequisies
------------

.. code-block:: bash
   :caption: install required libraries

   sudo apt install lib32z1
   sudp dpkg --add-architecture i386
   sudo apt update
   sudo apt install libx11-6:i386


.. code-block:: bash
   :caption: install fonts

    sudo apt install xfonts-75dpi
    sudo apt install xfonts-100dpi

    xset +fp /usr/share/fonts/X11/75dpi
    xset +fp /usr/share/fonts/X11/100dpi
    xset fp rehash

Install
-------

Copy ``HDS_*.exe`` to ``~/Downloads/``

.. code-block:: bash

   cd ~/Downloads
   chmod +x HDS_*.exe
   sudo ./HDS_*.exe

Options:

.. code-block:: raw
   :capton: Target location

   /usr/opt/HDS

Cleanup
-------

Cleanup the Mentor installer

.. code-block:: bash

   sudo su
   rm -R /root/mgc
   exit

Libraries
---------

.. code-block:: bash

   git clone https://github.com/tschinz/config.git
   sudo cp config/scripts/vhdl/libraries/ieee/numeric_std.vhd /usr/opt/HDS/hdl_libs/ieee/hdl
   sudo cp config/scripts/vhdl/libraries/ieee/std_logic_1164.vhd /usr/opt/HDS/hdl_libs/ieee/hdl

   sudo rm -R config

Test
----

.. code-block:: bash

   export PATH=$PATH:/usr/opt/HDS/bin
   export LM_LICENSE_FILE=$LM_LICENSE_FILE:27001@mentorlm.hevs.ch

   hdl_designer &



License & PATH
==============

For the HEVS license add the following lines to ``/etc/profile``

.. code-block:: bash

   #-------------------------------------------------------------------------------
   # EDA tools
   #
   export PATH=$PATH:/usr/opt/HDS/bin:/usr/opt/Modelsim/modeltech/bin:/usr/opt/Xilinx/ISE_DS/ISE/bin/lin64/
   export LM_LICENSE_FILE=$LM_LICENSE_FILE:27001@mentorlm.hevs.ch:2100@xilinxlm.hevs.ch:1717@dl-srv69.admin.hes-so.ch