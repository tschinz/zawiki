============
Introduction
============

.. contents:: :local:

Some LaTeX helppages
====================

* `HEI SPL Latex Templates <https://gitlab.hevs.ch/SPL/miscellaneous/spl-latex-template>`_
* `Cheatsheet A Guide to Latex <https://gitlab.hevs.ch/SPL/miscellaneous/spl-latex-template/raw/master/help/Guide-to-Latex.pdf?inline=false>`_
* `Tex Stackexchange Forum <https://tex.stackexchange.com/>`_


Generate PDF files
==================
Latex is best suited to insert images as pdf. In order to convert images or svg into pdf use inkscape
Convert ``*.svg`` images with inkscape to ``*.pdf`` and ``*.pdf_tex``

.. code-block:: bash

   inkscape -D -z --file=image.svg --export-pdf=image.pdf --export-latex
