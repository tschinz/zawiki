=========
Libraries
=========

Numeric Operations
==================

.. important::

   Never mix these Libraries!!!

   Use numeric_std - it's the proper IEEE standard and is more recent.

.. code-block:: vhdl

   library ieee;
     use ieee.std_logic_1164.all;
     use ieee.numeric_std.all;

   -- Never mix these libraries

   library ieee ;
     use ieee.std_logic_1164.all ;
     use ieee.std_logic_arith.all ;
     use ieee.std_logic_unsigned.all ;

IEEE
====

Standart IEEE Libraries can not be found in every tool because of their copyright notice. Nevertheless they can be downloaded from the `IEE Webpage <https://standards.ieee.org/downloads.html>`_

:config_repo:`tree/master/scripts/vhdl/libraries/ieee`

* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/math_complex.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/math_real.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/numeric_bit.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/numeric_std.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_1164.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_arith.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_misc.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_signed.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_textio.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/ieee/std_logic_unsigned.vhd`

STD
===

:config_repo:`tree/master/scripts/vhdl/libraries/std`

* :config_repo:`blob/master/scripts/vhdl/libraries/std/standard.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/std/textio.vhd`

Synopsys
========

:config_repo:`tree/master/scripts/vhdl/libraries/synopsys`

* :config_repo:`blob/master/scripts/vhdl/libraries/synopsys/arithmetic.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/synopsys/attributes.vhd`
* :config_repo:`blob/master/scripts/vhdl/libraries/synopsys/types.vhd`

:tag:`coding`
:tag:`vhdl`
:tag:`libraries`