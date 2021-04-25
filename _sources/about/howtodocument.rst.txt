=======================
HACK this documentation
=======================

.. figure:: img/hack.*
   :align: center
   :width: 150px

If you want to add your page to this documentation you need to add your source file in the appropriate section.
Every main section has its own folder structure and its own ``img/`` folder containing all images for this section.

This documentation uses a recursive index tree: every folder have a special :download:`index.rst` file that tell sphinx witch file, and in what order put it in the documentation tree.

If you don't have enough knowledge about ReStructuredText then you can also use the `pandoc translator <https://pandoc.org/try/>`_ or use the internal :doc:`Cheatsheet </multimedia/writing/rst/cheatsheet>`

New Documentation Section
=========================

If you want to add a new section, you need to specify in the :download:`main index_html.rst </index_html.rst>`, the ``section/index_html.rst`` file of the new section.

.. code-block:: ReST

   .. toctree::
      :hidden:
      :glob:
      :maxdepth: 4
      :titlesonly:
      :caption: Content

      os/index
      tools/index
      coding/index
      writing/index
      multimedia/index
      security/index
      about/index

The section name should be the same as the folder name, but for Sphinx this is not required. Sphinx will take the name of the section from the title of the ``section/index.rst`` file.

Example Section
===============

I want to document the new topic in SPL Knowhow repo, and want to create a section for it; let's call it ``Section``

So I need to create a folder named ``section/`` (name is not important), and in it create a ``section/index.rst`` file like:

.. code:: ReST

   =============
   Section Title
   =============

   .. figure:: img/logo.*
      :align: right
      :width: 150px

   .. toctree::
      :glob:
      :maxdepth: 4
      :titlesonly:
      :caption: Content

      *

.. note::
   The ``.. toctree::`` directive accept some parameters, in this case ``:glob:``
   makes so you can use the ``*`` to include all the remaining files.

.. note::
   The file path is relative to the index file, if you want to specify the absolute path, you need to prepend ``/``

Now I can add additional ``ReST`` files like ``section/intro.rst`` and other files like ``section/section_part_1.rst``, ``ssection/section_part_2.rst``, etc.

Section Images
--------------

Add an image folder in the section folder ``section/img``, in case of additional documents ass a ``section/docs`` folder too.

Write the contents
------------------

That's it, now you can add all you want in the new section ``section`` and all pages will show up in the documentation automatically.

:tag:`sphinx`
:tag:`how to`