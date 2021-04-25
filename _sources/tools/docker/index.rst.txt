======
Docker
======

.. figure:: img/logo.*
   :align: center
   :width: 70%

.. toctree::
   :glob:
   :maxdepth: 4
   :titlesonly:
   :caption: Content

   *

Introduction
============
Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels. All containers are run by a single operating system kernel and therefore use fewer resources than virtual machines.

Additional Information
=======================

* `Docker Docs <https://docs.docker.com/>`_
* `Docker <https://www.docker.com/>`_ - Official Docker page
* `Dockerhub <https://hub.docker.com/>`_ - For community docker container images

Windows vs Linux Containers
===========================

You cannot run Linux and Windows container at the same time. You have to choose and switch between them.

.. list-table::
   :align: center

   * - .. figure:: img/windows_containers.*

     - .. figure:: img/linux_containers.*


Switch between Hyper-V and VirtualBox
=====================================

In order to "quickly" switch between them use the commands below. But a restart if necessary in any case.

.. code-block::
   :caption: Hyper-V Disable

   bcdedit /set hypervisorlaunchtype off

.. code-block::
   :caption: Hyper-V Enable

   bcdedit /set hypervisorlaunchtype auto


Docker for Windows and VirtualBox
=================================

Docker for Windows requires two Windows features activated:

* ``Hyper-V``
* ``Virtual Machine Platform``
* ``Windows Hypervisor Platform``

.. figure:: img/windows_features.*
   :align: center
   :width: 40%

Once activate normal Virtualbox images don't work anymore because the default Type 2 Hypervisor cannot run im parallel with Type 1 Hypervisor Hyper-V.
Luckily since Virtualbox v6.0 you can select Hyper-V as default Hypervisor for any image.

.. important::
   When run Virtualbox image run under Hyper-V there is a significant performance penalty. (practically unusable)

.. figure:: img/virtualbox_settings.*
   :align: center
   :width: 60%

Once a image is launched a new icon in the iconbar appears (tortoise with a V)

.. figure:: img/virtualbox_iconbar.*
   :align: center
   :width: 40%

:tag:`tools`
:tag:`docker`
