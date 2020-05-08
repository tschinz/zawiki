===
PIP
===

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

   # Uninstall
   pip uninstall <packagename>

Create ``requirements.txt``
===========================

.. code-block:: bash

   pip freeze > requirements.txt
