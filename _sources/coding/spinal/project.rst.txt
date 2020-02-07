=============
Project Files
=============

.. contents:: :local:

Project Folder Structure
========================

Every SpinalHDL Project is created as a Scala Project This means the Scala folder definition applies:

* ``etc/`` - external project libraries for example VexRISCV
* ``project/`` - sbt project configuration

   * ``build.properties`` - contains only sbt version to be used for this project
   * ``plugins.sbt`` - contains only sbt plugins to be used for this project

* ``src/`` - contains all source files synthesizable or not

   * ``main/`` - contains a folder for each programming language

      * ``<language>/``
      * ``c/`` - src files for c ex. for hard- or softcore
      * ``scala/`` - src files for scala resp. SpinalHDL

         * ``<project_name>/`` - custom folder structure for project
         * soc - example soc project
         * misc -example project

           * ``sim/`` - optional simulation directory

   * ``test`` - same structure are ``src/`` files for test purpoese only

      * ``<language>/``
      * ``cpp/`` - test files for cpp ex. for hard- or softcore
      * ``scala/`` - test files for scala resp. SpinalHDL

* ``target/`` - folder where scala keeps compiled files

* ``build.properties``
* ``plugins.sbt``


Create your first Project
=========================

Clone the https://github.com/SpinalHDL/SpinalTemplateSbt sample project and get started.

.. code-block:: bash

   git clone https://github.com/SpinalHDL/SpinalTemplateSbt.git
   cd SpinalBaseProject/
   sbt run
   ls MyTopLevel.vhd

