======
Syntax
======

.. comments .. contents:: :local:

General
=======

Comments
--------

.. code-block:: tcl
   :caption: comment

   # this is a comment

Console output
--------------

To do a print in the console, the special variable "text" has to be used

.. code-block:: tcl
   :caption: console output

   puts "This text will be displayed in the console"

Concatenate commands
--------------------

It is possible to concatenate commands with the ``[]`` braces.

.. code-block:: tcl
   :caption: concatenation

   set pwd_path [eval pwd]

   if {[file exists $filename)]} { }

   if {[file isdirectory $filename)]} { }

   set var [examine /block/signalname]

Sleep
-----

.. code-block:: tcl
   :caption: sleep

   after [expr {int(10*1000)}] # Wait for 10*1000ms = 10sec

Variables
---------

Local variables
^^^^^^^^^^^^^^^

.. code-block:: tcl
   :caption: local variable

   # Writing Variables
   set variableName stringValue
   set exampleVar /home/user

   # Reading Variables
   $variableName
   set exampleVar2 $exampleVar/file.do

   # Reading Signal Value and store in Variable
   set exampleVar3 [examine /block/signalname]

Environment variables
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: tcl
   :caption: environment variable

   # Current working directory
   set pwd_path [eval pwd]

   # Reading environment variable
   set compPath $env(modelsim_complib)

Statements
==========

if
--

.. code-block:: tcl
   :caption: if

   if { [$string == "string"] || [$int >= 50] && [string equal -nocase $string "compare"] } {
   Do stuff here
   }

Loop
----

.. code-block:: tcl
   :caption: loops

   set file_list {
                   file_1.vhd
                   file_2.vhd
   }

   foreach file $file_list {
       puts "File $file"
   }

   set library_file_list {
                           design_library {counter.vhd}
                           test_library   {counter_tb.vhd
                                           counter_tester.vhd}
   }

   foreach {library file_list} $library_file_list {
       puts "Library name $library"
       foreach file $file_list {
           puts "file $file"
       }

Filesystem
==========

Check if folder exist
---------------------

.. code-block:: tcl
   :caption: check folder

   if {[file isdirectory $env(modelsim_complib)]} {
   # folder exist
   } else {
     # create folder
     file mkdir $env(modelsim_complib)
   }

Check if file exist
-------------------

.. code-block:: tcl
   :caption: check folder

   if {[file exists $env(modelsim_complib)]} {
   # file exist
   } else {
     # create folder
     file mkdir $env(modelsim_complib)
   }

Make dir
--------

.. code-block:: tcl
   :caption: mkdir

   file mkdir $env(modelsim_complib)

Change directory
----------------

.. code-block:: tcl
   :caption: cd

   cd $compPath

Create list
-----------

.. code-block:: tcl
   :caption: cd

   [list item1 item2]

Calculation
-----------

.. code-block:: tcl
   :caption: calculations

   [expr 1.0 * 3.0 / 4.0]

foreach_in_collection
---------------------

.. code-block:: tcl
   :caption: collection

   foreach_in_collection op [get_available_operating_conditions] {
     set operating_conditions $op
     update_timing_netlist
     set oc_name [get_operating_conditions_info $op -display_name]
     puts "Operating Condition Set to: $oc_name"
     report_timing -setup -npath 10 -detail summary -append -file top_setup.txt

get_collection_size
-------------------

.. code-block:: tcl
   :caption: collection

   set num_ports [get_collection_size [get_ports *]]

.. _ref_quartus_tcl:

Quartus specific
================

Post messages
-------------

Post messages on Console.

.. code-block:: tcl

   postmessage -type info -submsgs {"Submessage 1" "Submessage 2"} "Main info message"
   postmessage -type extra_info "Extra info message"
   postmessage -type warning "Warning message"
   postmessage -type critical_warning "Critical warning message"
   postmessage -type error -submsgs "Error submessage" "Main error message"

.. _ref_modelsim_tcl:

Modelsim specific
=================

Quit Sim
--------

Quit previous simulation if in action

.. code-block:: tcl
   :caption: quit vsim

   quit -sim

Creating library
----------------

Change to working folder and create working lib. Note: variable have to created before.

.. code-block:: tcl
   :caption: create workdir

   # change to working directory
   cd $compPath

   # Create work lib
   vlib $workPath

Mapping library
---------------

Mapping working library to to folder. Note: Variables have to created before.

.. code-block:: tcl
   :caption: map workdir

   # Change to Modelsim execution directory
   cd $ModelsimPath

   # Mapping work lib
   vmap work $workPath

Execute ``.do`` files
=====================

In order to execute another do file in from this one

.. code-block:: tcl
   :caption: do.do

   do .path/to/do_file/filename.do

Compilation
-----------

Compilation of vhdl files in a certain library. Note: Variables have to created before.

.. code-block:: tcl
   :caption: compilation.do

   # compilation into before created working library
   vcom -work $workPath path/to/vhdl_file/filename.vhd

Loading design
--------------

Loading of the design. See also ``vsim -help``
toplevelbloc = testbenc

.. code-block:: tcl
   :caption: load_design.do

   vsim -t ps work.toplevelbloc -l path/to/transcript.txt

Wave
----

Display wave window and load waveform

.. code-block:: tcl
   :caption: wave.do

   view wave
   do path/to/wave.do

Restart & Simulate
------------------

Restart simulation and simulate

.. code-block:: tcl
   :caption: restart_and_sim.do

   # Force restart
   restart -f

   # Run until something finish (or until sun burns down)
   run -all

   # Run given time
   run 50 us

Read Signals
------------

.. code-block:: tcl
   :caption: signals.do

   examine /bloc/signal_name
