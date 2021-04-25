=========
ASCII Art
=========

.. figure:: img/ascii.*
   :align: center
   :width: 150px

Logic
=====

.. code-block::

   =D-

.. code-block::

   --pad_rst----+----------+----------+
             +--+--+    +--+--+    +--+--+    +-.
   --'1'-----|D   Q|----|D   Q|----|D   Q|----|  >O-----rst
             |     |    |     |    |     |    +-´
          +--|>    | +--|>    | +--|>    |
          |  +-----+ |  +-----+ |  +-----+
   --clk--+----------+----------+

Timing Diagrams
===============

.. code-block::

   Mode 0
                _   _   ____________________   _   _
    input  ____/ \ / \ /                    \_/ \ / \______
                _________________________________________
    output ____/                                         \_

   Mode 1
                _   _   ____________________   _   _
    input  ____/ \ / \ /                    \_/ \ / \______
                             _______________
    output _________________/               \______________


.. code-block::

   Mode = 0 (reactive on rising edge)
                ___________________________________________
    input  ____/
                ___________________
    output ____/                   \_______________________
    time   0s                    0.5s                    1s

                _
    input  ____/ \_________________________________________
                ___________________
    output ____/                   \_______________________
    time   0s                    0.5s                    1s

   Mode = 1 (reactive on falling edge)
           _____
    input       \__________________________________________
                  ___________________
    output ______/                   \_____________________
    time   0s                    0.5s                    1s

                _
    input  ____/ \_________________________________________
                   ___________________
    output ______ /                   \____________________
    time   0s                    0.5s                    1s

Analog Signal
=============

.. code-block::

   ^
   |.-.   .-.   .-.   .-.   .-.   .  netdata                          .-.   .-
   |   '-'   '-'   '-'   '-'   '-'   is installed and running now!  -'   '-'
   +----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+--->

Cowsay
======

The linux tool cowsay allows to dynamically create ASCII-Art. Install it via the following command:

.. code-block:: bash

   sudo apt install cowsay

**Some examples**

.. code-block::

   $ cowsay Answer to everything is 42
    ____________________________
   < Answer to everything is 42 >
    ----------------------------
           \   ^__^
            \  (oo)\_______
               (__)\       )\/\
                   ||----w |
                   ||     ||

   $ cowsay -f sheep Answer to everything is 42
    ____________________________
   < Answer to everything is 42 >
    ----------------------------
     \
      \
          __
         UooU\.'@@@@@@`.
         \__/(@@@@@@@@@@)
              (@@@@@@@@)
              `YY~~~~YY'
               ||    ||

   $ cowsay -f bud-frogs Answer to everything is 42
    ____________________________
   < Answer to everything is 42 >
    ----------------------------
        \
         \
             oO)-.                       .-(Oo
            /__  _\                     /_  __\
            \  \(  |     ()~()         |  )/  /
             \__|\ |    (-___-)        | /|__/
             '  '--'    ==`-'==        '--'  '

   $ cowsay -f ghostbusters Answer to everything is 42
    ____________________________
   < Answer to everything is 42 >
    ----------------------------
             \
              \
               \          __---__
                       _-       /--______
                  __--( /     \ )XXXXXXXXXXX\v.
                .-XXX(   O   O  )XXXXXXXXXXXXXXX-
               /XXX(       U     )        XXXXXXX\
             /XXXXX(              )--_  XXXXXXXXXXX\
            /XXXXX/ (      O     )   XXXXXX   \XXXXX\
            XXXXX/   /            XXXXXX   \__ \XXXXX
            XXXXXX__/          XXXXXX         \__---->
    ---___  XXX__/          XXXXXX      \__         /
      \-  --__/   ___/\  XXXXXX            /  ___--/=
       \-\    ___/    XXXXXX              '--- XXXXXX
          \-\/XXX\ XXXXXX                      /XXXXX
            \XXXXXXXXX   \                    /XXXXX/
             \XXXXXX      >                 _/XXXXX/
               \XXXXX--__/              __-- XXXX/
                -XXXXXXXX---------------  XXXXXX-
                   \XXXXXXXXXXXXXXXXXXXXXXXXXX/
                     ""VXXXXXXXXXXXXXXXXXXV""


a cowfile can be manually added on the folder ``/usr/share/cowsay/cows``, loaded by default are the following graphics:
``apt`` ``bud-frogs`` ``bunny`` ``calvin`` ``cheese`` ``cock`` ``cower`` ``daemon`` ``default`` ``dragon`` ``dragon-and-cow`` ``duck`` ``elephant`` ``elephant-in-snake`` ``eyes`` ``flaming-sheep`` ``ghostbusters`` ``gnu`` ``hellokitty`` ``kiss`` ``koala`` ``kosh`` ``luke-koala`` ``mech-and-cow`` ``milk`` ``moofasa`` ``moose`` ``pony`` ``pony-smaller`` ``ren`` ``sheep`` ``skeleton`` ``snowman`` ``stegosaurus`` ``stimpy`` ``suse`` ``three-eyes`` ``turkey`` ``turtle`` ``tux`` ``unipony`` ``unipony-smaller`` ``vader`` ``vader-koala`` ``www``

Images
======

.. code-block::

             /\
            /**\
           /****\   /\
          /      \ /**\
         /  /\    /    \        /\    /\  /\      /\            /\/\/\  /\
        /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
       /  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
      /  /      \/  \/\   \  /      \    /   /    \
   __/__/_______/___/__\___\_______        ______
                                          /     /\
                                         /     /  \
                                        /_____/----\_    (
                                       "     "          ).
                                      _ ___          o (:') o
                                     (@))_))        o ~/~~\~ o
                                                     o  o  o

.. code-block::

         .==.        .==.
        //`^\\      //^`\\
       // ^ ^\(\__/)/^ ^^\\
      //^ ^^ ^/6  6\ ^^ ^ \\
     //^ ^^ ^/( .. )\^ ^ ^ \\
    // ^^ ^/\| v""v |/\^ ^ ^\\
   // ^^/\/ /  `~~`  \ \/\^ ^\\
   -----------------------------
   HERE BE DRAGONS

.. code-block::

        \          SORRY            /
         \                         /
          \    This page does     /
           ]   not exist yet.    [    ,'|
           ]                     [   /  |
           ]___               ___[ ,'   |
           ]  ]\             /[  [ |:   |
           ]  ] \           / [  [ |:   |
           ]  ]  ]         [  [  [ |:   |
           ]  ]  ]__     __[  [  [ |:   |
           ]  ]  ] ]\ _ /[ [  [  [ |:   |
           ]  ]  ] ] (#) [ [  [  [ :===='
           ]  ]  ]_].nHn.[_[  [  [
           ]  ]  ]  HHHHH. [  [  [
           ]  ] /   `HH("N  \ [  [
           ]__]/     HHH  "  \[__[
           ]         NNN         [
           ]         N/"         [
           ]         N H         [
          /          N            \
         /           q,            \
        /                           \



.. code-block::

   áááááááááááááááááááááááááááááááááá /\
   ááááááááááááááááááááááááááááá /\á //\\
   áááááááááááááááááááááá /\ááá //\\///\\\ááááááá /\
   ááááááááááááááááááááá //\\á ///\////\\\\á /\á //\\
   áááááááá /\ááááááááá /á ^ \/^ ^/^á ^á ^ \/^ \/á ^ \
   ááááááá / ^\ááá /\á / ^áá /á ^/ ^ ^ ^áá ^\ ^/á ^^á \
   áááááá /^áá \á / ^\/ ^ ^áá ^ / ^á ^ááá ^á \/ ^áá ^á \áááááá *
   ááááá /á ^ ^ \/^á ^\ ^ ^ ^áá ^á ^áá ^áá ____á ^áá ^á \áááá /|\
   áááá / ^ ^á ^ \ ^á _\___________________|á |_____^ ^á \áá /||o\
   ááá / ^^á ^ ^ ^\á /______________________________\ ^ ^ \ /|o|||\
   áá /á ^á ^^ ^ ^á /________________________________\á ^á /|||||o|\
   á /^ ^á ^ ^^á ^ááá ||___|___||||||||||||___|__|||ááááá /||o||||||\áá
   á/ ^áá ^áá ^ááá ^á ||___|___||||||||||||___|__|||ááááááááá | |áááááá
   / ^ ^ ^á ^á ^á ^áá ||||||||||||||||||||||||||||||oooooooooo| |ooooooo
   ooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

Animation
=========

.. code-block::

   -\|/-\|/
   ⠁⠂⠄⡀⢀⠠⠐⠈
   ⣾⣽⣻⢿⡿⣟⣯⣷

Keyboard
========

.. code-block::

           ,---------------. ,---------------. ,---------------.
           |F13|F14|F15|F16| |F17|F18|F19|F20| |F21|F22|F23|F24|
   ,---.   |---------------| |---------------| |---------------| ,-----------. ,---------------. ,-------.
   |Esc|   |F1 |F2 |F3 |F4 | |F5 |F6 |F7 |F8 | |F9 |F10|F11|F12| |PrS|ScL|Pau| |VDn|VUp|Mut|Pwr| | Help  |
   `---'   `---------------' `---------------' `---------------' `-----------' `---------------' `-------'
   ,-----------------------------------------------------------. ,-----------. ,---------------. ,-------.
   |  `|  1|  2|  3|  4|  5|  6|  7|  8|  9|  0|  -|  =|JPY|Bsp| |Ins|Hom|PgU| |NmL|  /|  *|  -| |Stp|Agn|
   |-----------------------------------------------------------| |-----------| |---------------| |-------|
   |Tab  |  Q|  W|  E|  R|  T|  Y|  U|  I|  O|  P|  [|  ]|  \  | |Del|End|PgD| |  7|  8|  9|  +| |Mnu|Und|
   |-----------------------------------------------------------| `-----------' |---------------| |-------|
   |CapsL |  A|  S|  D|  F|  G|  H|  J|  K|  L|  ;|  :|  #|Retn|               |  4|  5|  6|KP,| |Sel|Cpy|
   |-----------------------------------------------------------|     ,---.     |---------------| |-------|
   |Shft|  <|  Z|  X|  C|  V|  B|  N|  M|  ,|  ,|  /| RO|Shift |     |Up |     |  1|  2|  3|KP=| |Exe|Pst|
   |-----------------------------------------------------------| ,-----------. |---------------| |-------|
   |Ctl|Gui|Alt|MHEN|HNJ| Space  |H/E|HENK|KANA|Alt|Gui|App|Ctl| |Lef|Dow|Rig| |  0    |  .|Ent| |Fnd|Cut|
   `-----------------------------------------------------------' `-----------' `---------------' `-------'

:tag:`multimedia`
:tag:`pictures`
:tag:`asciiart`