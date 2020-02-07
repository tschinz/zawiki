Introduction
============

Anaconda is a complete python package with comes with many features:

* Jupyter
* PIP
* Environments
* Support Win / Linux / Mac

* `Anaconda Download <https://www.continuum.io/downloads>`_
* `Conda Docs <http://conda.pydata.org/>`_

Anaconda / Conda Update
=======================

.. code-block:: bash

   # Update all Conda packages
   conda update --all

   # Update Anaconda only
   conda update conda
   conda update anaconda

Config File
===========

Create Config file

.. code-block:: bash

   jupyter notebook --generate-config

The Config file  is located at: ``~/.jupyter/jupyter_notebook_config.json``

Change Password
===============

.. code-block:: bash

   jupyter notebook password

Jupyter
=======

See the dedicated jupyter pages for more informations: :doc:`/tools/jupyter/index`