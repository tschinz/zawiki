==============
Git Submodules
==============

Clone Repo with submodules
==========================

.. code-block:: bash

   git clone --recursive [URL to Git repo]

Pull changes
============

Pull all changes in the repo including changes in the submodules
----------------------------------------------------------------

.. code-block:: bash

   git pull --recurse-submodules

Pull all changes for the submodules
-----------------------------------

.. code-block:: bash

   git submodule update --remote

Add submodule and define the master branch as the one you want to track
=======================================================================

.. code-block:: bash

   git submodule add -b master [URL to Git repo]

   git submodule init

Move Submodule
==============

.. code-block:: bash

   git mv a b
