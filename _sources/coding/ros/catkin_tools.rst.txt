============
Catkin Tools
============

Catkin build system
===================

This Python package provides command line tools for working with the catkin meta-buildsystem and catkin workspaces. These tools are separate from the Catkin CMake macros used in Catkin source packages. It has to be installed seperately.

* https://catkin-tools.readthedocs.io/

Installation Catkin Tools
-------------------------

.. code-block:: bash

   # Add ROS Repositories
   sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
   wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

   # Install via apt-get
   sudo apt-get update
   sudo apt-get install python-catkin-tools

   # Install via pip
   sudo pip install -U catkin_tools


Cheat Sheet
===========

This is a non-exhaustive list of some common and useful invocations of
the ``catkin`` command. All of the commands which do not explicitly
specify a workspace path (with ``--workspace``) are assumed to be run from
within a directory contained by the target workspace. For thorough
documentation, please see the chapters on each verb.

Initialize Workspaces
---------------------

Initialize a workspace with a default layout (``src``/``build``/``devel``) in the *current* directory:

.. code-block:: bash

   catkin init
   catkin init --workspace .
   catkin config --init
   mkdir src && catkin build

... with a default layout in a *different* directory:

.. code-block:: bash

   catkin init --workspace /tmp/path/to/my_catkin_ws

... which explicitly extends another workspace:

.. code-block:: bash

   catkin config --init --extend /opt/ros/indigo

Initialize a workspace with a **source space** called ``other_src``:

.. code-block:: bash

   catkin config --init --source-space other_src

... or a workspace with **build**, **devel**, and **install space**
ending with the suffix ``_alternate``:

.. code-block:: bash

   catkin config --init --space-suffix _alternate

Configuring Workspaces
----------------------

View the current configuration:

.. code-block:: bash

   catkin config

Setting and unsetting CMake options:

.. code-block:: bash

   catkin config --cmake-args -DENABLE_CORBA=ON -DCORBA_IMPLEMENTATION=OMNIORB
.. code-block:: bash

   catkin config --no-cmake-args

Toggle installing to the specified **install space**:

.. code-block:: bash

   catkin config --install

Building Packages
------------------

Build all the packages:

.. code-block:: bash

   catkin build

... one at a time, with additional debug output:

.. code-block:: bash

   catkin build -p 1

... and force CMake to re-configure for each one:

.. code-block:: bash

   catkin build --force-cmake

Build a specific package and its dependencies:

.. code-block:: bash

   `catkin build <package_name>

... or ignore its dependencies:

.. code-block:: bash

   catkin build <package_name> --no-deps

Build the package containing the current working directory:

.. code-block:: bash

   catkin build --this

... but don\'t rebuild its dependencies:

.. code-block:: bash

   catkin build --this --no-deps

Build packages with additional CMake args:

.. code-block:: bash

   catkin build --cmake-args -DCMAKE_BUILD_TYPE=Debug

... and save them to be used for the next build:

.. code-block:: bash

   catkin build --save-config --cmake-args -DCMAKE_BUILD_TYPE=Debug

Build all packages in a given directory:

.. code-block:: bash

   catkin build $(catkin list -u /path/to/folder)

... or in the current folder:

.. code-block:: bash

   catkin build $(catkin list -u .)

Cleaning Build Products
------------------------

Blow away the build, devel, and install spaces (if they exist):

.. code-block:: bash

   catkin clean

... or just the **build space**:

.. code-block:: bash

   catkin clean --build

... or just clean a single package:

.. code-block:: bash

   catkin clean PKGNAME

... or just delete the build directories for packages which have been
disabled or removed:

.. code-block:: bash

   catkin clean --orphans

:tag:`coding`
:tag:`ros`
:tag:`catkin`