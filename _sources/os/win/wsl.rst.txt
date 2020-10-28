===
WSL
===

WSL means Windows Subsystem for Linux.

Additional Information
======================

* https://docs.microsoft.com/en-us/windows/wsl/


Commands
========

.. code-block:: bash

   # shows images available on wsl including version
   wsl -l -v

   # change wsl image to version 2
   wsl --set-version <distro-name> 2

   # set all new images to wsl version 2
   wsl --set-default-version 2


