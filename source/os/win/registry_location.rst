========
Registry
========

Login
=====

.. code-block:: bat

   Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon

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
     * ExportBitmapResolution => DWORD 32bit => 300 (ppi)
     * AutomaticPicturesCompressionDefault => DWORD => 0