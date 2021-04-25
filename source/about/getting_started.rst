.. _sphinx-doc:
.. _getting-started:

===============================
How to use Sphinx Documentation
===============================

.. figure:: img/howto.*
   :align: center
   :width: 150px

Sphinx Requirements
===================

* make

   * Windows - `GnuWin32 <http://gnuwin32.sourceforge.net/packages/make.htm>`_

   * Linux

     .. code-block:: bash

        sudo apt-get install build-essential

* Anaconda

   * `Anaconda <https://www.anaconda.com/distribution/>`_

* Install Conda environment from :download:`condaenv.yml </../condaenv.yml>`

  .. code-block:: bash

     conda env create -f condaenv.yml

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
* activate conda environment

  .. code-block:: bash

     conda activate znotes-env

* Generate the desired output

  .. code-block:: bash

     make               # list all the available output format
     make help          # list all the available output format

     make html          # for html
     make latex         # for latex
     make latexpdf      # for latex (will require latexpdf installed)

     make clean         # cleans all generated file, TODO before commiting
     make clean-images  # cleans all autogerated png and pdf files

     make livehtml      # start a local webserver and watch files change
     make openhtml      # open the generated index.html in browser

all the outputs will be in ``_build`` folder

* html: ``_build/html``
* pdf & tex: ``_build/latex``

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

* Commit and push the changes :ref:`SPL Knowhow CI <about/getting_started:Continuous Integration (CI)>`

Continuous Integration (CI)
===========================

The CI is done with Github Actions with the file :download:`action-sphinx.yml </../.github/workflows/action-sphinx.yml>` will run on each ``master`` commit and create a ``_build/`` folder which will be pushed onto the branch gh-pages and consequently be used by github to displayed static html pages.

:tag:`sphinx`
:tag:`getting started`