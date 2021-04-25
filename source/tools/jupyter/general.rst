=======
General
=======

Config
======

.. code-block:: bash

   # Show the location of the config directory
   jupyter --config-dir

   # Show the location of the data directory
   jupyter --data-dir

   # Show all Jupyter directories and search paths
   jupyter --paths

   # List notebook extensions
   jupyter nbextension list

   # List running notebook servers
   jupyter notebook list

Change Password
---------------

.. code-block:: bash

   jupyter notebook password

Jupyterlab
==========

Create a config file

.. code-block:: bash

   jupyter lab --generate-config

The Config file is located at: `~/.jupyter/jupyter_notebook_config.json`

Extensions
----------

Get installed extensions

.. code-block:: bash

   jupyter labextension list

Install extension

.. code-block:: bash

   jupyter labextension install <extensionsname>

For Matplotlib see: https://github.com/matplotlib/jupyter-matplotlib

See all Jupyterlab Extensions: https://www.npmjs.com/search?q=keywords:jupyterlab-extension

Kernels
=======

Inspect available Kernels

.. code-block:: bash

   jupyter kernelspec list

Use a specific kernel

.. code-block:: bash

   jupyter qtconsole --kernel=machine-learning-jh44uwir

Troubleshoot
============

.. code-block:: bash

   jupyter troubleshoot

:tag:`tools`
:tag:`jupyter`
:tag:`commandline`