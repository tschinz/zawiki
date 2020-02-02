============
Installation
============

.. contents:: :local:

see also :config_repo:`jupyter config <tree/master/config/jupyter>`

My Extension list
=================

.. code-block:: bash
   :linenos:

   jupyter labextension install @jupyter-widgets/jupyterlab-manager
   jupyter labextension install @jupyterlab/statusbar-extension
   jupyter labextension install @jupyterlab/geojson-extension
   jupyter labextension install @jupyterlab/git
   pip install -e git+https://github.com/jupyterlab/jupyterlab-git.git#egg=jupyterlab_git
   jupyter serverextension enable --py jupyterlab_git --sys-prefix
   jupyter labextension install @jupyterlab/plotly-extension
   jupyter labextension install @jupyterlab/toc
   jupyter labextension install @deathbeds/jupyterlab_graphviz
   jupyter labextension install @ryantam626/jupyterlab_sublime
   jupyter labextension install jupyter-matplotlib
   jupyter labextension install jupyterlab_bokeh
   jupyter labextension install @mflevine/jupyterlab_html
   jupyter labextension install jupyterlab-drawio
   jupyter labextension install jupyterlab-flake8
   # jupyter labextension install jupyterlab_nbmetadata
   jupyter labextension install jupyterlab_hidecode
   jupyter labextension install @krassowski/jupyterlab_go_to_definition
   jupyter labextension install @lckr/jupyterlab_variableinspector

All in one install
------------------

.. code-block:: bash
   :linenos:

   jupyter labextension install @lckr/jupyterlab_variableinspector @krassowski/jupyterlab_go_to_definition @jupyter-widgets/jupyterlab-manager @jupyterlab/statusbar-extension @jupyterlab/geojson-extension @jupyterlab/plotly-extension @jupyterlab/toc @deathbeds/jupyterlab_graphviz jupyterlab_hidecode @ryantam626/jupyterlab_sublime jupyter-matplotlib jupyterlab_bokeh @mflevine/jupyterlab_html jupyterlab-drawio jupyterlab-flake8
   pip install -e git+https://github.com/jupyterlab/jupyterlab-git.git#egg=jupyterlab_git
   jupyter serverextension enable --py jupyterlab_git --sys-prefix

Add install R to jupyter
------------------------

.. code-block:: bash

   conda install -c r r-essentials

Add install pandoc and inkscape to conda
----------------------------------------

.. code-block:: bash
   :linenos:

   conda install -c conda-forge pandoc
   conda install -c conda-forge inkscape

Install Python Additional Stuff
===============================

Graphviz
--------

Install Graphviz from https://graphviz.gitlab.io/download/
put Graphviz/bin in your ``PATH``

.. code-block:: bash

   pip install graphviz

Install python Libraries
------------------------

.. code-block:: bash
   :linenos:

   pip install pixiedust
   pip install SchemDraw
   pip install nbwavedrom
   pip install flake8
   pip install pyflakes
   pip install nbconvert
   pip install watermark

**oneline**

.. code-block:: bash

   pip install pixiedust SchemDraw nbwavedrom flake8 pyflakes nbconvert graphviz

Problems
========

Anaconda Navigator not starting
-------------------------------
When starting anaconda-navigator produces the follwowing error.

.. code-block:: bash
   :linenos:

   $ anaconda-navigator.exe
   Traceback (most recent call last):
     File "c:\Users\silvan.zahno\AppData\Local\Continuum\anaconda3\lib\site-packages\qtpy\__init__.py", line 202, in <module>
       from PySide import __version__ as PYSIDE_VERSION  # analysis:ignore
   ModuleNotFoundError: No module named 'PySide'

   During handling of the above exception, another exception occurred:

   Traceback (most recent call last):
     File "c:\Users\silvan.zahno\AppData\Local\Continuum\anaconda3\Scripts\anaconda-navigator-script.py", line 6, in <module>
       from anaconda_navigator.app.main import main
     File "c:\Users\silvan.zahno\AppData\Local\Continuum\anaconda3\lib\site-packages\anaconda_navigator\app\main.py", line 22, in <module>
       from anaconda_navigator.utils.conda import is_conda_available
     File "c:\Users\silvan.zahno\AppData\Local\Continuum\anaconda3\lib\site-packages\anaconda_navigator\utils\__init__.py", line 15, in <module>
       from qtpy.QtGui import QIcon
     File "c:\Users\silvan.zahno\AppData\Local\Continuum\anaconda3\lib\site-packages\qtpy\__init__.py", line 208, in <module>
       raise PythonQtError('No Qt bindings could be found')
   qtpy.PythonQtError: No Qt bindings could be found

.. code-block:: bash
   :linenos:

   pip uninstall PyQt5
   conda update conda
   conda update anaconda-navigator
   anaconda-navigator.exe

Install Plotly and Plotly Express
=================================

.. code-block:: bash

   conda install -c plotly plotly_express plotly-orca

Better PDF Export
=================

.. code-block:: bash
   :linenos:

   sudo apt-get install texlive-xetex
   pip install jupyter_contrib_nbextensions
   pip install cite2c
