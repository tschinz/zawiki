======
Pandoc
======

If you need to convert files from one markup format into another, pandoc is your swiss-army knife.

* `Pandoc Online <https://pandoc.org/try/>`_
* `Pandoc Download <https://pandoc.org/installing.html>`_

Additional Arguments
====================

Highlight Styles
----------------

.. code-block:: bash

   # List all Highlight Styles
   pandoc --list-highlight-styles
   pygments
   tango
   espresso
   zenburn
   kate
   monochrome
   breezedark
   haddock

   ## Pandoc Argument
   --highlight-style breezedark

PDF Output
----------

.. code-block:: bash

   --pdf-engine=xelatex

For my template needed packages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* cm-super

  * Error no Scalable font

* koma-script

  * ! LaTeX Error: File ``scrartcl.cls`` not found.

Template
--------

Latex Template needs to be in the following folders

Windows
^^^^^^^

.. code-block:: bash

   C:\\Users\\<username>\\AppData\\Roaming\\pandoc\\templates

Linux
^^^^^

.. code-block:: bash

  ~/.pandoc/templates/

.. code-block:: bash

  --template=<template>.latex
