======
Launch
======

.. comments .. contents:: :local:

Launcher
========

* launch os a tool for launchine multiple nodes (as well as setting parameters)
* Are written in XM as ``*.launch`` files
* If not yet running, launch atuomatically stars a roscore

Browse to the folder and start a launch file with

.. code-block:: bash

   roslaunch <file_name>.launch

Start a launch file from a package with

.. code-block:: bash

   roslaunch <package_name> <file_name>.launch

Launch file
------------

.. code-block:: xml
   :caption: talker_listerner.launch

   <launch>
   <node name="listener" pkg="roscpp_tutorials" type="listener" output="screen"/>
   <node name="talker" pkg="roscpp_tutorials" type="talker" output="screen"/>
   </launch>

launch: Root element of the launch file

* **node**: Each ``<node>`` tag specifies a node to be launched
* **name**: Name of the node (free to choose)
* **pkg**: Package containing the node
* **type**: Type of the node, there must be a corresponding executable with the same name
* **output**: Specifies where to output log messages (screen: console, log: log file)

More Info

* http://wiki.ros.org/roslaunch/XML
* http://wiki.ros.org/roslaunch/Tutorials/Roslaunch%20tips%20for%20larger%20projects

Arguments
^^^^^^^^^^

* Create re-usable launch files with ``<arg>`` tag, which works like a parameter (default optional)

  .. code-block:: xml

     <arg name="arg_name" default="default_value"/>


* Use arguments in launch file with

  .. code-block:: xml

     $(arg arg_name)

* When launching, arguments can be set with

  .. code-block:: xml

     roslaunch launchf_file.launch arg_name:value

Example:

.. code-block:: xml
   :caption: range_world.launch

   <?xml version="1.0"?>
     <launch>
       <arg name="use_sim_time" default="true"/>
       <arg name="world" default="gazebo_ros_range"/>
       <arg name="debug" default="false"/>
       <arg name="physics" default="ode"/>

       <group if="$(arg use_sim_time)">
         <param name="/use_sim_time" value="true" />
       </group>
       <include file="$(find gazebo_ros) /launch/empty_world.launch">
       <arg name="world_name" value="$(find gazebo_plugins)/ test/test_worlds/$(arg world).world"/>
       <arg name="debug" value="$(arg debug)"/>
       <arg name="physics" value="$(arg physics)"/>
     </include>
   </launch>

More info
http://wiki.ros.org/roslaunch/XML/arg

Including other launch files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Include other launch files with ``<include>`` tag to
  organize large projects

  .. code-block:: xml

     <include file="package_name" />

* Find the system path to other packages with

  .. code-block:: xml

     $(find package_name)

* Pass arguments to the included file

  .. code-block:: xml

     <arg name="arg_name" value="value"/>


  .. code-block:: xml
     :caption: range_world.launch

     <?xml version="1.0"?>
     <launch>
       <arg name="use_sim_time" default="true"/>
       <arg name="world" default="gazebo_ros_range"/>
       <arg name="debug" default="false"/>
       <arg name="physics" default="ode"/>

         <group if="$(arg use_sim_time)">
         <param name="/use_sim_time" value="true" />
       </group>

         <include file="$(find gazebo_ros) /launch/empty_world.launch">
         <arg name="world_name" value="$(find gazebo_plugins)/test/test_worlds/$(arg world).world"/>
         <arg name="debug" value="$(arg debug)"/>
         <arg name="physics" value="$(arg physics)"/>
       </include>
     </launch>

More info:
http://wiki.ros.org/roslaunch/XML/include

Create a launcher in a new package
------------------------------------

#. move to the folder of the package
#. run : ``mkdir launch && cd launch``
#. run : ``gedit <LAUNCHER_NAME>.launch``
#. fill the launcher file, for example:

   .. code-block:: xml

      <launch>
        <node pkg="<PACKAGE1_NAME>" type="<NODE1_NAME>" name="<INSTANCE0>"/>
        <node pkg="<PACKAGE2_NAME>" type="<NODE2_NAME>" name="<INSTANCE1>"/>
        <node pkg="<PACKAGE2_NAME>" type="<NODE2_NAME>" name="<INSTANCE2>"/>
        <node pkg="<PACKAGE2_NAME>" type="<NODE2_NAME>" name="<INSTANCE3>"/>
      </launch>

Include another launcher inside this launcher
------------------------------------------------

Add the include directive :

.. code-block:: xml

   <launch>
     <include file="$(find <PKG_NAME>)/launch/<LAUNCHER_NAME>.launch" />
     </launch>

This is very useful to combine launcher together, or complete a first launcher :

* the first launcher is responsible to launch a driver
* the second launcher that includes the first one launches also a graphical tool on top of that

The advantage being that it is not necessary to copy paste all the code of the first launcher into the second  one to use them together.

Parameters in launcher
-----------------------

Parameters can be set in the launcher and get by the node at run time. This is a convenient way to avoid rebuilding the code each time it is necessary to change the value of a variable, for example a path to a file.

The syntax is the following one :

.. code-block:: xml

   <param name="<PARAM_NAME>" type="<TYPE>" value="<VALUE>" />


Get the value of a parameter at run time
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

It can be used in the node at run time with this C++ code :

.. code-block:: cpp

   ros::NodeHandle nh;
   std::string iniPath;
   nh.getParam("ini_path", iniPath);

The node handler gets the parameter called *ini_path* in the launcher and will store it in the variable *iniPath*. If the parameter is public, therefore accessible by all the nodes, this is sufficient to get its value. If the parameter is private to a node, then the node handler needs to know the name of the node :

.. code-block:: cpp

   ros::NodeHandle nh;
   std::string iniName;
   nh.getParam("tof_driver_1/ini_name", iniName);


To get the name of the node at run time, it is possible to use this line :

.. code-block:: cpp

   std::string nodeName = ros::this_node::getName();


Public vs Private parameters
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Depending of where the parameter is declared in the launcher, the parameter will be either private to a node, or accessible by all the nodes. If the parameter is declared outside of a ``<node></node>`` tag, it is public and accessible to all the nodes. At the opposite, if the parameter is declared inside a ``<node></node>`` tag, it will only be accessible by the node, with the specific method described above.

In this example :

* The parameter *ini_path* is public and accessible by all the nodes only with its name.
* The parameter *ini_name* is private to each node and is accessible with the name of the node and its name, concatenated together. This allows to declare two time the same parameter with different value, as long as they are declared inside different nodes.

.. code-block:: xml

   <launch>
         <!-- Public parameters for both nodes -->
         <param name="ini_path" type="str"
                value="$(find ros_driver_for_multiple_tof_sensors)/launch/" />

         <!-- Call the driver node for sensor 1 (IP = 192.168.0.105)-->
         <node pkg="ros_driver_for_multiple_tof_sensors"
               type="ros_driver_multiple_sensors_node" name="tof_driver_1"
               args="" required="true" output="screen" >

               <!-- Private parameter for node 1 -->
               <param name="ini_name" type="str" value="tof_sensor1.ini" />
         </node>

         <!-- Call the driver node for sensor 2 (IP = 192.168.1.105)-->
         <node pkg="ros_driver_for_multiple_tof_sensors"
               type="ros_driver_multiple_sensors_node" name="tof_driver_2"
               args="" required="true" output="screen" >

               <!-- Private parameter for node 2 -->
               <param name="ini_name" type="str" value="tof_sensor2.ini" />
         </node>
   </launch>

Rviz configuration
===================

After setting up the display configuration in Rviz, you can save it with the tab ``File -> Save config as -> ...``

Then you can call it directly in the launch file by adding :

.. code-block:: xml

   <node pkg="rviz" type="rviz" name="rviz"
       args="-d <PATH_TO_FILE>/<CONFIG_NAME>.rviz"/>

This will open Rviz with the saved configuration when the *launch* file is launched.
