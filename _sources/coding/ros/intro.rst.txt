============
Introduction
============

ROS aka Robotic Operating System is not a OS itself but a framework and middleware.

*  Software Framework for programming robots
*  Prototype from Standfort AI Research Institute and created by Willow Garage in 2007
*  Since 2013 maintained by the Open Source Robotics Foundation (OSRF)
*  Consists of infrastrucutre, tools, capabilities and a ecosystem

.. table:: Source : ROS Tutorial #1 - https://www.youtube.com/watch?v=9U6GDonGFHw&t=1s

   +-----------------------------------+----------------------------------+
   | Advantages                        | Disadvantages                    |
   +===================================+==================================+
   | Provides lots of infrastructure,  | Approaching maturity, but still  |
   | tools and capabilities            | changing                         |
   +-----------------------------------+----------------------------------+
   | Easy to try other people’s work   | Security and scalability are not |
   | and shar your own                 | first-class concerns             |
   +-----------------------------------+----------------------------------+
   | Large community                   | OSes other than Ubuntu Linux are |
   |                                   | not well supported               |
   +-----------------------------------+----------------------------------+
   | Free, open source, BSD license    |                                  |
   +-----------------------------------+----------------------------------+
   | **Great for open-source and       | **Not great for mission-critical |
   | researchers**                     | tasks**                          |
   +-----------------------------------+----------------------------------+

.. figure:: ./img/ros-equation.png
   :alt: ROS Equation
   :width: 700px

   ROS Equation

+----------------+----------------+--------------+----------------+
| Plumbing       | Tools          | Capabilities | Ecosystem      |
+================+================+==============+================+
| Process        | Simulation     | Control      | Package        |
| management     |                |              | organization   |
+----------------+----------------+--------------+----------------+
| Inter-process  | Visualization  | Planning     | Software       |
| communication  |                |              | distribution   |
+----------------+----------------+--------------+----------------+
| Device drivers | Graphical user | Perception   | Documentation  |
|                | interface      |              |                |
+----------------+----------------+--------------+----------------+
|                | Data logging   | Mapping      | Tutorials      |
+----------------+----------------+--------------+----------------+
|                |                | Manipulation |                |
+----------------+----------------+--------------+----------------+

Philosophy
==========

-  **Peer to peer** - Individual programs communicate over defined API (ROS messages, services, etc.).

-  **Distributed** - Programs can be run on multiple computers and communicate over the network.

-  **Multi-lingual** - ROS modules can be written in any language for which a client library exists (C++, Python, MATLAB, Java, etc.).

-  **Thin** - The ROS conventions encourage contributors to create standalone libraries and then wrap those libraries so they can send and receive messages to and from other ROS modules.

-  **Free and open source** - The core of ROS is released under the permissive BSD license, which allows commercial and noncommercial use.

.. _Content: #content
.. _Introduction: #introduction
.. _Additional Informations: #additional-informations
.. _ROS Installation: ros-install.md
.. _ROS Basics: ros-basics.md
.. _ROS Commands: ros-commands.md
.. _ROS Launch: ros-launch.md
.. _ROS TF2: ros-tf2.md
.. _ROS Tools: ros-tools.md
.. _ROS Packages: ros-packages.md
.. _ROS External Packages: ros-ext-packages.md
.. _ROS Rviz: ros-rviz.md
.. _ROS Books Summary: ros-books-summary.md
.. _Lidar Driver: ros-lidar-driver.md