===
PIP
===

.. figure:: img/pip_logo.*
   :align: center
   :width: 150px

Check out also:

  * :doc:`/tools/jupyter/index`
  * :doc:`/tools/anaconda/conda`
  * :doc:`/programming/python/pip_general`


Admin
=====

.. code-block:: bash

   # Show pip help
   pip --help

   # Show installed pip version
   pip --version

   # Update pip (Linux)
   pip install --upgrade pip

   # Update pip (Windows)
   python -m pip install --upgrade pip

Package
=======

.. code-block:: bash

   # Search a package
   pip search <packagename>

   # See package version
   pip show <packagename>

   # See all installed packages
   pip list

   # Install
   pip install <packagename>
   pip install -I <packagename>==<package version>
   pip install -I ipython==5.4.0

   # Update
   pip install -U <packagename>

   # Uninstall
   pip uninstall <packagename>

requirements
============

File content ``requirements.txt``
---------------------------------

.. code-block:: text
   :caption: ``requirements.txt``

   ###### Requirements without Version Specifiers ######`
   nose
   nose-cov
   beautifulsoup4

   ###### Requirements with Version Specifiers ######`
   docopt == 0.6.1             # Version Matching. Must be version 0.6.1
   keyring >= 4.1.1            # Minimum version 4.1.1
   coverage != 3.5             # Version Exclusion. Anything except version 3.5
   Mopidy-Dirble ~= 1.1        # Compatible release. Same as >= 1.1, == 1.*
   package >= 1.0, <=2.0       # two requirements combinesd with and


Create ``requirements.txt``
---------------------------

.. code-block:: bash

   pip freeze > requirements.txt


Install ``requirements.txt``
----------------------------

.. code-block:: bash

   pip install -r requirements.txt
