======
Syntax
======

This is a small cheat sheet with the most used syntax either ReST or SPHINX especially for within python files.

For more information see also:

* :doc:`/writing/rst/cheatsheet`
* :doc:`Python Docstrings </coding/python/docstring>`

Module Documentation
====================

.. code-block:: ReST

   .. moduleauthor:: Autor (autor@email.com)

   Description of the module.

   Reference to modules
   It is the :mod:`TestClass.TestClass`

   Reference to class
   It is the :class:`TestClass.TestClass`

   Reference to function
   It is the :func:`TestClass.TestClass`

   Include usage examples for the module. With or without linenumbers

   *Example:*

   .. literalinclude:: ../examples/example_1.py
     :linenos:

   .. literalinclude:: ../examples/example_2.py

   This afterwards is some code block::

     import TestClass

   """

Class Documentation
===================

.. code-block:: python

   class TestClass:
     """
     Test class description, needs an empty line afterwards

     :param arg1: first argument description
     :type arg1: unknown
     :param int arg2: second aargument description including type
     :param str arg3: third argument description including type
     :param arg4: fourth argument description
     :type arg4: 2 dimensional list of int
     """
     def __init__(self, arg1=None, arg2=1, arg3="str", arg4=[[1,2]]):
       # Constructor stuff
       #...

Function Documentation
======================

.. code-block:: python

   def exampleFunction(self, arg1, arg2):
       """
       example Function description, needs an empty line afterwards

       :param arg1: first argument description
       :type arg1: longer type description
       :param string arg2: second argument description including type

       :raises: TypeError

       :return: True or False, depending if found or not
       :rtype: bool

       *Example:*

       .. literalinclude:: ../examples/functionexample.py
       """

References
==========

**Modules**

.. code-block:: ReST

   :mod:`matplotlib.backend_bases`

**Classes**

.. code-block:: ReST

   :class:`~matplotlib.backend_bases.LocationEvent`

**Methods**

.. code-block:: ReST

   :meth:`~matplotlib.backend_bases.FigureCanvasBase.mpl_connect`
