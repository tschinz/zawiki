============
`docker` cmd
============

List
====

List all currently existing docker images

.. code-block:: bash

   docker images

.. code-block:: bash
   :caption: output

   REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
   docker101tutorial       latest              ef9eb5245be8        4 days ago          27.5MB
   alpine/git              latest              94f8849864da        3 weeks ago         28.4MB
   continuumio/anaconda3   latest              472a925c4385        7 weeks ago         2.73GB

Pull
====

Get a docker image from dockerhub

.. code-block:: bash

   docker pull <containername>:<tag>

   docker pull ubuntu:latest
   docker pull ubuntu:20.10

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
