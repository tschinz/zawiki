=======
General
=======

Anaconda / Conda Update
=======================

.. code-block:: bash

   # Update all Conda packages
   conda update --all

   # Update Anaconda only
   conda update conda
   conda update anaconda


nbconvert
=========

Converts jupyter notebook to other formats

.. code-block:: bash

   jupyter nbconvert --to <format> notebook.ipynb

formats are:

* ``--to html`` - HTML

  * ``--template full`` (default)
  * ``--template basic``

* ``--to latex`` - LaTeX

  * ``--template article`` (default)
  * ``--template report``
  * ``--template basic``

* ``--to pdf`` - PDF

  * ``--template article`` (default)
  * ``--template report``
  * ``--template basic``

* ``--to sildes`` - Reveal.js HTML slideshow
* ``--to markdown`` - Markdown
* ``--to rst`` - reStructuredText
* ``--to script`` - executable script (``.py``)
* ``--to notebook`` -

Convert to python for linting
-----------------------------

.. code-block:: bash

   jupyter nbconvert --to script test.ipynb

Convert to html
---------------

.. code-block:: bash

   jupyter nbconvert --to html test.ipynb

Convert to pdf
--------------

needs Latex installed see: :doc:`LaTeX </writing/latex/install>`

.. code-block:: bash

   jupyter nbconvert --to latex test.ipynb
