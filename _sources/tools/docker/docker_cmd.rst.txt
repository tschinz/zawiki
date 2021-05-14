============
`docker` cmd
============

.. program:: docker

Images
======

.. option:: images

   List all currently existing docker images

.. prompt:: bash

   docker images

.. code-block:: bash
   :caption: output

   REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
   docker101tutorial       latest              ef9eb5245be8        4 days ago          27.5MB
   alpine/git              latest              94f8849864da        3 weeks ago         28.4MB
   continuumio/anaconda3   latest              472a925c4385        7 weeks ago         2.73GB

Pull
====

.. option:: pull <containername>:<tag>

   Get a docker image from dockerhub

.. code-block:: bash

   docker pull <containername>:<tag>

   docker pull ubuntu:latest
   docker pull ubuntu:20.10
   docker pull ubuntu

Build
=====

.. option:: build <imageName>

   To build an image from a Dockerfile

.. program:: docker build

.. code-block:: bash

   docker build -t <repoName>/<imageName>:<tagName> .

   docker build -t local/app:latest .

.. note::
   Please mind the dot ``.`` at the end.

   As per the above command, Docker will start to build images automatically by reading the instructions from the Dockerfile saved in the current working directory.

.. option:: -t [<repoName>/]<imageName>[:<tagName>]

   build docker with a given name.

.. option:: -f <path/to/dockerfile>

   using dockerfile located at a different location.

   .. prompt:: bash

      docker build -f </path/to/a/Dockerfile> .

.. program:: docker

Remove dangling images
----------------------

Docker images consist of multiple layers.
Dangling images, are layers that have no relationship to any tagged images.
They no longer serve a purpose and consume disk space.

.. prompt:: bash

   docker rmi $(docker images -f dangling=true -q)

On Windows:

.. prompt:: bash

   FOR /f "tokens=*" %i IN ('docker images -f "dangling=true" -q') DO docker rmi -f %i

List images and containers
==========================

.. prompt:: bash

   docker image ls
   docker container ls
   docker container ls -a

.. note::

   ``ls -a`` shows all containers with stopped ones.

To remove all stopped containers:

.. prompt:: bash

   docker container prune

Run
===

.. option:: run <imagename>

   Run a docker image already pulled or build.

.. program:: docker run

.. option:: -it

   Run docker in interactive mode

   .. code-block:: bash

      docker run -it ubuntu

.. option:: -d

   Run docker in deamonized

   .. code-block:: bash

      docker run -it -d ubuntu

.. option:: -v <hostPath>:<containerPath>

   Link host folder to container folder

   .. code-block:: bash

      # Windows
      docker run -v //c/data:/data ubuntu
      # Linux
      docker run -v /data:/data    ubuntu

.. option:: -p <hostPort>:<containerPort>

   Forwared container port to host port

   .. code-block:: bash

      docker run -p 8080:80 ubuntu

.. option:: --name <containername>

   Use the ``--name`` flag to give the container a name. Otherwise it is generated randomly.

.. option:: --entrypoint=<command>

   overwrite the CMD command within the dockerfile.

.. code-block:: bash

   Bypass the ENTRYPOINT and run a bash shell

   docker run -it --entrypoint=/bin/bash myimage -i

.. program:: docker

Stop an remove a container
==========================

.. prompt:: bash

   docker container stop <container-name or container-id>
   docker container rm <container-name or container-id>

Remove a container while running:

.. prompt:: bash

   docker container rm -f <container-name or container-id>

Exec
====

.. option:: exec <imagename> <command>

   Run a command inside the docker image

.. code-block:: bash

   docker exec -it <dockername> <command>
   docker exec -it ubuntu bash

:tag:`tools`
:tag:`docker`
:tag:`commandline`