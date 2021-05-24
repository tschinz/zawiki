======
Pihole
======

.. figure:: img/logo.*
   :align: center
   :width: 150px

`Pi-Hole <https://pi-hole.net/>`_ is a system for network-wide adblocking. It replaces the DNS server and apps are by default network-wide banned.

Very good blocklist from `Firebog <https://firebog.net/>`_

Commands
========

For more informations see `here <https://docs.pi-hole.net/core/pihole-command/>`_

.. code-block:: bash

   pihole enable
   pihole restartdns

Change password
^^^^^^^^^^^^^^^

.. code-block:: bash

   pihole -a -p

Update ``gravity.db``
^^^^^^^^^^^^^^^^^^^^^

Update gravity db from blocklists

.. code-block:: bash

   pihole -g

Modify ``gravity.db``
^^^^^^^^^^^^^^^^^^^^^

For more informations see `here <https://docs.pi-hole.net/database/gravity/>`_

Delete **all** ``exact`` blacklist entries

.. code-block:: bash

   sudo sqlite3 /etc/pihole/gravity.db "delete from domainlist where type=1;"

Other examples are found `here <https://docs.pi-hole.net/database/gravity/example/>`_