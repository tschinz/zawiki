========
Registry
========

Login
=====

.. code-block:: bat

   Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon

For Autologin use the following entries

.. code-block:: bat

   AutoAdminLogon = "1"
   DefaultUserName = <Username>
   DefaultPassword = <Password>

DateTime
========

.. code-block:: bat

   HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers

Shell Overlay Icons
===================

.. code-block:: bat

   Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers

Context Menu
============

.. code-block:: bat

   Computer\HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers

New Context Menu
================

.. code-block:: bat

   Computer\HKEY_CLASSES_ROOT\

SAP Shortcut Password
=====================

.. code-block:: bat

   Computer\HKEY_CURRENT_USER\Software\SAP\SAPShortcut\Security

PowerPoint Options
==================

.. code-block:: bat

   Computer\HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Options
     :: ExportBitmapResolution => DWORD 32bit => 300 (ppi)
     :: AutomaticPicturesCompressionDefault => DWORD => 0

Power Settings
==============

.. code-block:: bat

   Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power
     :: HibernateEnabledDefault = 0

Taskbar Transparency
====================

.. code-block:: bat

   Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced
     :: UseOLEDTaskbarTransparency => DWORD 32bit => 1

:tag:`os`
:tag:`windows`
:tag:`registry`