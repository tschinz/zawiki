=============
Let's Encrypt
=============

Version
=======

.. code-block:: bash

   certbot --version

Renew Certificates
==================

.. code-block:: bash

   # Stop Webserver Service
   sudo service apache2 stop

   # Update Certificates
   sudo certbot renew
   sudo certbot renew --dry-run

   # Restart Webserver Service
   sudo service apache2 start

:tag:`os`
:tag:`linux`
:tag:`tools`
:tag:`lets encrypt`