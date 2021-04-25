========
Retropie
========

.. figure:: img/retropie_icon.*
   :align: center
   :width: 20%

Default config
==============

User: ``pi``
Password: ``raspberry``

Hotkeys
=======

.. list-table::
   :header-rows: 1

   * - Hotkey
     - Description
   * - ``Select`` |+| ``Start``
     - Exit Game
   * - ``F4``
     - Enter Terminal

Important Files
===============


SSH Config

.. code-block:: bash

   /etc/ssh/sshd_config

Roms

.. code-block:: bash

   ~/RetroPie/roms

Emulationstation

.. code-block:: bash

   # ES Settings
   ~/.emulationstation/
   /opt/retropie/configs/all/emulationstation/

   # System
   ~/.emulationstation/es_systems.cfg
   /etc/emulationstation/es_systems.cfg

   # Platform Config
   /opt/retropie/configs/all/platforms.cfg

   # Controller Config
   ~/.emulationstation/es_input.cfg

   # Themes
    ~/.emulationstation/themes
    /etc/emulationstation/themes

Todo After Install
==================

1. Change Keyboard Layout

   ``raspi-config`` |arrow-right| ``4. Localisation Options`` |arrow-right| ``I3 Change Keyboard Layout``

2. Change default password of user ``pi``

   .. code-block:: bash

      passwd

3. Change default password of user ``root``

   .. code-block:: bash

      sudo passwd root

4. Enable SSH

   ``raspi-config`` |arrow-right| ``4. Localisation Options`` |arrow-right| ``I3 Change Keyboard Layout``

5. Enable SSH Root access

   .. code-block:: bash

      echo 'PermitRootLogin yes' | sudo tee -a /etc/ssh/sshd_config

6. Change Wifi Country

   ``raspi-config`` |arrow-right| ``4. Localisation Options`` |arrow-right| ``I4 Change Wifi Country``

7. Expand Filesystem

   ``raspi-config`` |arrow-right| ``7. Advanced Options`` |arrow-right| ``A1 Expand Filesystem``

8. Install Safe Shutdown (in case of a NESPi 4 Case)

   .. code-block:: bash

      wget -O - "https://raw.githubusercontent.com/RetroFlag/retroflag-picase/master/install.sh" | sudo bash

9. Enable XBox Controller via Bluethooth

   .. code-block:: bash

      echo 'options bluetooth disable_ertm=Y' | sudo tee -a  /etc/modprobe.d/bluetooth.conf

   Setting to connect the XBox Controller is ``Display Yes No``

10. Configure all Gamepads
11. Install Theme to ``pixels`` at set it under ``UI Settings`` in RetroArch
12. Install additional packages


   RetroPie Setup |arrow-right| ``opt`` |arrow-right| ``dosbox`` ``frotz`` ``scummvm`` ``kodi``

13. Install RetroPie-Extras

   .. code-block:: bash
      :caption: install

      cd ~
      git clone https://github.com/zerojay/RetroPie-Extra.git
      cd RetroPie-Extra/
      ./install-extras.sh

   .. code-block:: bash
      :caption: usage

      cd ~
      cd RetroPie-Setup/
      sudo ./retropie_setup.sh

14. Update RetroPie and underlying Raspian Options

   RetroPie-Setup |arrow-right| ``Update``

15. Install EmulationStation Theme ``pixel``

   * RetroPie-Setup |arrow-right| ``814 esthemes`` |arrow-right| ``12 Install ehettervik/pixel``
   * Set Settings |arrow-right| ``UI Settings`` |arrow-right| ``Theme Set`` |arrow-right| ``Pixel``
   * Set Settings |arrow-right| ``UI Settings`` |arrow-right| ``Transition Style`` |arrow-right| ``Instant``

16. Copy all Roms to location ``~/Retropie/roms/``

17. Restart System

:tag:`raspberry pi`
:tag:`retropie`