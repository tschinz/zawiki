============
Installation
============

Tools
=====
The following tools are needed:

* :doc:`tools intro </coding/spinal/tools/index>`
* :doc:`intellij_idea </coding/spinal/tools/intellij_idea>`

Linux
=====

For Linux there is also a complete :config_repo:`install-spinal.bash <blob/master/scripts/spinal/install-spinal.bash>` script available.

.. code-block:: bash

   chmod +x install-spinal.bash
   ./install-spinal.bash

Base Tools Linux
----------------

.. code-block:: bash
   :linenos:

   sudo apt install -y git make autoconf g++ flex bison
   sudo apt install -y openjdk-8-jdk
   sudo apt install -y scala
   echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
   sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
   sudo apt update -y
   sudo apt install -y sbt

IDE Linux
---------

.. code-block:: bash

   sudo snap install intellij-idea-community --classic

Simulation Linux
----------------

.. code-block:: bash
   :linenos:

   cd ~
   git clone http://git.veripool.org/git/verilator
   unset VERILATOR_ROOT
   cd verilator
   git pull        # Make sure we're up-to-date
   git checkout verilator_3_916
   autoconf        # Create ./configure script
   ./configure
   make -j$(nproc)
   sudo make install
   sudo apt install -y gconf2 gtkwave

Hardware Debug Tools Linux
--------------------------

.. code-block:: bash

   sudo apt install -y openocd

RiscV Development Tools
-----------------------

.. code-block:: bash

    wget https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-20171231-x86_64-linux-centos6.tar.gz
    tar -xzvf riscv64-unknown-elf-gcc-20171231-x86_64-linux-centos6.tar.gz
    sudo mv riscv64-unknown-elf-gcc-20171231-x86_64-linux-centos6 /opt/riscv64-unknown-elf-gcc-20171231-x86_64-linux-centos6
    sudo mv /opt/riscv64-unknown-elf-gcc-20171231-x86_64-linux-centos6 /opt/riscv
    echo 'export PATH=/opt/riscv/bin:$PATH' >> ~/.bashrc
    echo 'export PATH=/opt/riscv/bin:$PATH' >> ~/.zshrc

Optional Dev Tools Linux
------------------------

.. code-block:: bash
   :linenos:

   echo "Install default tools"
   sudo apt install -y zsh
   sudo chsh -s /bin/zsh $USER
   cd ~/Downloads
   sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

   sudo apt install -y yakuake krusader

   wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
   sudo apt install apt-transport-https
   echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
   sudo apt update
   sudo apt install -y sublime-text sublime-merge

   sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily
   sudo apt update
   sudo apt install -y fsearch-trunk

Windows
=======

Base Tools Windows
------------------

* Install `Java <https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_
* Install `Scala Build Tool SBT <https://www.scala-sbt.org/download.html>`_

IDE Windows
-----------

* Install `IntelliJ IDEA <https://www.jetbrains.com/idea/download/>`_
   * Within IntelliJ install Scala Plugin
   * Remove settings for Code Checking

Simulation Windows
------------------

* Install `MSYS2 64bit <https://www.msys2.org/>`_
* Install verilator from minGW packet manager

  .. code-block:: bash
     :linenos:
     :caption: Verilator Installation

     pacman -Syuu

     # Close the MSYS2 shell once you're asked to
     pacman -Syuu
     pacman -S --needed base-devel mingw-w64-x86_64-toolchain \
                   git flex\
                   mingw-w64-x86_64-cmake

     pacman -S mingw-w64-x86_64-verilator

* ADD MSYS2 ``C:\msys64\usr\bin;C:\msys64\mingw64\bin`` to your Environment Variable ``Path``.

Hardware Debug Tools Windows
----------------------------

* Install `OpenOCD <http://www.freddiechopin.info/en/download/category/4-openocd>`_ for JTAG debugging.
