=============
Tips & Tricks
=============

.. comments .. contents:: :local:

My ahk scripts cna be found in the :config_repo:`config repo <tree/master/scripts/ahk>`

Comment
=======

.. code-block:: ahk

   ;------------
   ;-- Comment
   ;--

Performance and Compatility
===========================

.. code-block:: ahk

   ; Recommended for performance and compatibility with future AutoHotkey releases
   #NoEnv


Warnings
========

.. code-block:: ahk

   ; Enable warnings to assist with detecting common errors
   #Warn


Enable Regex for Title mach Mode
================================

.. code-block:: ahk

   SetTitleMatchMode,RegEx ; then
   IfWinExist, Total Commander.*


Tray Icon and ToolTip
=====================

.. code-block:: ahk

   Menu, TRAY, Icon, Favicon.ico
   Menu, TRAY, Tip, Tooltip Text


Examples
========
For Win10 Hibernate
-------------------

.. code-block:: ahk

   ; Wait for Hotkey
   ;   Ctrl + Win + Alt + l
   ; Send Hotkey
   ;   Ctrl + Win + x + u + s
   ^#<!l::Send #xuh


For Win10 Sleep
---------------

.. code-block:: ahk

   ; Wait for Hotkey
   ;   Ctrl + Win + l
   ; Send Hotkey
   ;   Win + x + u + s
   ^#l::Send #xus


Home and End Hotkey
-------------------

.. code-block:: ahk

   ; Ctrl + Left
   ^Left::Send {Home}
   ; Ctrl + Right
   ^Right::Send {End}


Check for AHK Version and output message
========================================

.. code-block:: ahk

   If (A_AhkVersion < "1.0.39.00")
   {
       MsgBox,20,,This script may not work properly with your version of AutoHotkey. Continue?
       IfMsgBox,No
       ExitApp
   }


Supend a script via Hotkey
==========================

.. code-block:: ahk

   f1::suspend

