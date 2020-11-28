=====
LaTeX
=====

.. figure:: img/logo.*
   :align: center
   :width: 300px

.. toctree::
   :glob:
   :maxdepth: 4
   :titlesonly:
   :caption: Content

   *


Introduction
============

Some LaTeX helppages
--------------------

* `HEI SPL Latex Templates <https://gitlab.hevs.ch/SPL/miscellaneous/spl-latex-template>`_
* :pdfviewer:`Cheatsheet A Guide to Latex <github/tschinz/znotes/blob/source/writing/latex/docs/Guide-to-Latex.pdf>`
* :pdfviewer:`Cheatsheet A Guide to Latex Presentation <github/tschinz/znotes/blob/source/writing/latex/docs/Guide-to-Presentation.pdf>`
* `Tex Stackexchange Forum <https://tex.stackexchange.com/>`_


Generate PDF files
------------------
Latex is best suited to insert images as pdf. In order to convert images or svg into pdf use inkscape
Convert ``*.svg`` images with inkscape to ``*.pdf`` and ``*.pdf_tex``

.. code-block:: bash

   inkscape -D -z --file=image.svg --export-pdf=image.pdf --export-latex
