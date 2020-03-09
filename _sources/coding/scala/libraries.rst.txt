=========
Libraries
=========

.. contents:: :local:


``scala.math._``
================

.. code-block:: scala

   import scala.math._

   pow(2,16-1)  // 2^(16-1)
   Pi           // 3.1415
   atan()
   sin()

``scala.sys.process._``
=======================

.. code-block:: scala

   import scala.sys.process._

   cmd = "ls -la"
   cmd!

``java.util.Calendar``
======================

.. code-block:: scala

   import java.util.Calendar

   println(s"Start cordicPipelinedSim Simulation: ${Calendar.getInstance().getTime()}")
   println(s"End cordicPipelinedSim Simulation: ${Calendar.getInstance().getTime()}")
