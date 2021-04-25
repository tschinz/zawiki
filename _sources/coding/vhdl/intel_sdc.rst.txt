===============
SDC Constraints
===============

.. figure:: img/intel_fpga.*
   :align: center
   :width: 150px

* :pdfviewer:`Intel SDC Constraint Manual <github/tschinz/znotes/blob/master/source/coding/vhdl/docs/intel_sdc_manual.pdf>`

Comment
=======

.. code-block:: tcl

   # This is a comment

New line
========

No character allowed after newline ``\\``

.. code-block::

    command_part_1 \\
    command_part_2

Netlist Terminology
===================

+--------+-----------------------------+
|  Term  |  Definition                 |
+========+=============================+
| Cell   | Device building block       |
+--------+-----------------------------+
| Pin    | I/O of cells (not FPGA I/O) |
+--------+-----------------------------+
| Net    | Connection between Ports    |
+--------+-----------------------------+
| Port   | Top-level I/O               |
+--------+-----------------------------+

:tag:`coding`
:tag:`vhdl`
:tag:`sdc`