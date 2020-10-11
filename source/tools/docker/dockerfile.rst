==========
Dockerfile
==========

.. figure:: img/dockerfile.*
   :align: right
   :width: 20%


Docker can build images automatically by reading the instructions from a Dockerfile.

For more information see: `Dockerfile reference <https://docs.docker.com/engine/reference/builder/>`_

Instructions
============

A typical Dockerfile contains the following instructions.

.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :widths: 1 3 5
   :align: center

   * - Instruction
     - Example
     - Description
   * - ``FROM``
     - .. code-block:: dockerfile

          FROM ubuntu:18.04

     - It will set the base image of the container.
   * - ``LABEL``
     - .. code-block:: dockerfile

          LABEL ENV=”DEVELOPMENT”

     - It is a key-value pair used to specify metadata information of the image.
   * - ``RUN``
     - .. code-block:: dockerfile

          RUN apt-get update
          RUN apt-get install tomcat

     - It is used to execute the command on the base image and it will create a new layer.
   * - ``CMD``
     - .. code-block:: dockerfile

          CMD [“java”, “-jar”, “app.jar”]

     - It is used to set a command to execute first when the container starts.
   * - ``EXPOSE``
     - .. code-block:: dockerfile

          EXPOSE 8080

     - It will expose the port to access the container. Container will listen on this network port. We can access the output using this port.
   * - ``MAINTAINER``
     - .. code-block:: dockerfile

          MAINTAINER maintainer@email.com

     - It will give the detail of the author who created this Docker image.
   * - ``ENV``
     - .. code-block:: dockerfile

          ENV DB_NAME=”MySQL”
          ENV DB_VERSION=”8.0”

     -  It is used to set environment variables in the key-value pair. These variables are set during the image build and are available after container created.
   * - ``COPY``
     - .. code-block:: dockerfile

          COPY /target/plantuml.jar plantuml.jar

     - It is used to copy local files to the container.
   * - ``ADD``
     - .. code-block:: dockerfile

          ADD file.tar.xz / .
          ADD http://url.com/git.git /usr/local/folder/

     - It works same as copy but having some more feature like we can extract local tar and add remote URL.
   * - ``ENTRYPOINT``
     - .. code-block:: dockerfile

          ENTRYPOINT [“java”, “-jar”, “app.jar”]

     - It is used to set the main command for the image. It works as same as ``CMD`` instruction. The only difference between ``CMD`` and ``ENTRYPOINT`` is instructions are not overwritten in ``ENTRYPOINT``.
   * - ``VOLUME``
     - .. code-block:: dockerfile

          VOLUME /app/folder

     - It will creates a mount point with the specified name.
   * - ``USER``
     - .. code-block:: dockerfile

          USER user
          USER admin

     - It will sets the user name and user group to use when running the image.
   * - ``WORKDIR``
     - .. code-block:: dockerfile

          WORKDIR /var/lib/

     - It will set the working directory. It will create the directory if not present.

Example
-------

.. code-block:: dockerfile

   FROM ubuntu:latest
   MAINTAINER Prename Name "user@email.com"s
   RUN apt-get install -y software-properties-common python
   RUN add-apt-repository ppa:chris-lea/node.js
   RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
   RUN apt-get update
   RUN apt-get install -y nodejs
   RUN mkdir /var/www
   ADD app.js /var/www/app.js
   CMD ["/usr/bin/node", "/var/www/app.js"]