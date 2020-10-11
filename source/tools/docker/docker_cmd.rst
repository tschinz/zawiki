============
`docker` cmd
============

Pull
====

Get a docker image from dockerhub

.. code-block:: bash

   docker pull Ubuntu

Build
=====

To build an image from the Dockerfile, simply run:

.. code-block:: bash
   
   docker build -t dockerfile .

.. note::
   Please mind the dot ``.`` at the end.
   
   As per the above command, Docker will start to build images automatically by reading the instructions from the Dockerfile saved in the current working directory.


If the Dockerfile is saved in somewhere else, you can mention its path using ``-f`` flag like below.

.. code-block:: bash
   
   docker build -f /path/to/a/Dockerfile .

Run
===

Run a docker image already pulled or build can be run with:

.. code-block:: bash

   docker run -it dockerfile
   docker run -it -d -p 8080:8080 ubuntu
