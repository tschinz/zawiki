============
Common Fixes
============

Port already in use
===================

If docker complains that the port can not be bound and is already in use

check if the port already used

.. code-block:: bash

   netstat -aon

check if the port is exluded

.. code-block:: bash

   netsh int ipv4 show excludedportrange protocol=tcp

cleanup all network devices

.. code-block:: bash

   netcfg -d

:tag:`tools`
:tag:`docker`
:tag:`fix`
