======================
General Shell Commands
======================

.. contents:: :local:

Change permissions on type
==========================

.. code-block:: bash

   sudo find /var/www -type d -print0 | sudo xargs -0 chmod 0755
   sudo find /var/www -type f -print0 | sudo xargs -0 chmod 0644


SSH relia
=========

.. code-block:: bash

   ssh -p 2222 -L 5900:localhost:5900 -L 19999:localhost:19999 zas@relia.zapto.org
