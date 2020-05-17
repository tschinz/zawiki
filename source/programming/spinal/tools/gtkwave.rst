=======
GtkWave
=======

* Cheatsheet :pdfviewer:`GTKWave 3.3 Wave Analyzer User's Guide <github/tschinz/zawiki/source/programming/spinal/tools/docs/gtkwave.pdf`

Manual Reload
=============
If you want to manually via command-line reload the file the gconf2 tool needs to be installed

.. code-block:: bash

   sudo apt-get install gconf2

Afterwards the reload command can be executed

.. code-block:: bash

   gconftool-2 --type string --set /com.geda.gtkwave/0/reload 0