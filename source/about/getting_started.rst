.. _sphinx-doc:
.. _getting-started:

===============================
How to use Sphinx Documentation
===============================

Sphinx Requirements
===================

* make

   * Windows - `GnuWin32 <http://gnuwin32.sourceforge.net/packages/make.htm>`_

   * Linux

     .. code-block:: bash

        sudo apt-get install build-essential

* Python 3

   * `Python <https://www.python.org/downloads/>`_
   * `Anaconda <https://www.anaconda.com/distribution/>`_

* Python Modules (can be installed with pipenv)

  .. code-block:: bash

     pip install sphinx
     pip install sphinx-rtd-theme
     pip install pydata-sphinx-theme
     pip install sphinxcontrib-wavedrom
     pip install sphinxcontrib-plantuml
     pip install recommonmark
     pip install sphinxemoji
     pip install sphinx-copybutton
     pip install nbsphinx
     pip install jupyter_sphinx


* Latex Tools (only for latex build)

   * Windows

      * `MikTex <https://miktex.org/>`_
      * `TexStudio <https://www.texstudio.org/>`_

   * Linux

     .. code-block:: bash

        sudo apt install texlive-fonts-recommended texlive-latex-recommended texlive-latex-extra

* Inkscape (for ``.svg`` to ``.pdf`` and to ``.png`` conversion)

   * Windows - `Inkscape <https://inkscape.org/release/>`_

   * Linux

     .. code-block:: bash

        sudo apt-get install inkscape

How to create a new Sphinxdoc
=============================

.. code-block:: bash

   sphinx-quickstart

How to Build Sphinxdoc locally
==============================

Without pipenv
--------------

* Install requirements see: :ref:`about/getting_started:Sphinx Requirements`
* ``cd`` to the git folder
* Generate the desired output

  .. code-block:: bash

     make          # list all the available output format
     make help     # list all the available output format

     make html     # for html
     make latex    # for latex
     make latexpdf # for latex (will require latexpdf installed)

     make clean    # cleans all generated file, TODO before commiting
     make clean-images # cleans all autogerated png and pdf files

With pipenv
-----------

* Install requirements :ref:`about/getting_started:Sphinx Requirements`
* Create a virtual environment with pipenv (will use the Pipfile for installing the necessary packages)

  .. code-block:: bash

     pipenv install

* then you can build the documentation

  .. code-block:: bash

     pipenv run make html

* if you want run ``make`` multiple times, prepone ``pipenv run`` on each command can be annoying, you can spawn a subshell with

  .. code-block:: bash

     pipenv shell

* and then you can use ``make`` the usual way

  .. code-block:: bash

     make          # list all the available output format
     make help     # list all the available output format

     make html     # for html
     make latex    # for latex
     make latexpdf # for latex (will require latexpdf installed)

     make clean    # cleans all generated file, TODO before commiting
     make clean-images # cleans all autogerated png and pdf files

all the outputs will be in ``_build`` folder

* html: ``_build/html``
* pdf & tex: ``_build/latex``

Continuous Build
----------------

During developement or creation of a page, the script :download:`build-loop.bash </../build-loop.bash>` will rebuild the webpage every X seconds.
In this way a constant preview of the page can be shown.

Commit to Repository
====================

Before performing a commit the following steps are required:

* Verify the ``html`` documentation local :ref:`about/getting_started:How to Build Sphinxdoc locally`

  .. code-block:: bash

     make html

* Solve all build ``Warnings`` and ``Errors`` display during build in the commandline
* Generate ``pdf``

  .. code-block:: bash

     make latexpdf

* Clean the repo from generated files

  .. code-block:: bash

     make clean

* Commit and push the changes :ref:`SPL Knowhow CI <about/getting_started:Continuous Integration(CI)>`

Continuous Integration(CI)
==========================

The :download:`.travis.yml </../.travis.yml>` will run on each ``master`` commit and create a ``_build/`` folder which will be pushed onto the branch gh-pages and consequently be used by github to displayed static html pages.

