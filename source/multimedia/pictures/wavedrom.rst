========
Wavedrom
========

.. figure:: img/wavedrom.*
   :align: center
   :width: 150px

* :pdfviewer:`Wavedrom Paper <github/tschinz/zawiki/blob/master/source/multimedia/pictures/docs/SNUG2016_WaveDrom.pdf>`

Timing Diagrams
===============

.. only:: html or draft

   .. wavedrom::

      { // Wavedrom Config
        config: {
          hscale: 1,      // horizontal scale
          skin:'default', // narrow
        },
        // Title
        head:{
           text:'Timing Xaar1003 Explanation',
           tick:0, // Numeration top
        },
        // Signal
        signal: [
          { name: "DA-[0..3]", wave: 'z23.4z........23.4z........', data: ["1", "2..255", "256","1", "2..255", "256"]},
          { name: "DCLKA", wave: 'ln...l........n...l........', data: ["1", "2..255"], node: '.....a........b'},

          { name: "PCLK", wave: '0......10.10.10....50.50.50', data:["CycleA","CycleB","CycleC"], node: '.......c..d' },
          { name: "SCLK", wave: 'N..........................' },
        ],
        // Arrows
        edge: [
          'a<->b t_fire',
          'c<->d t_Cycle',
        ],
        // Footer
        foot: {
          text:['tspan', 'zas created for Xaar 28.04.2017',
          ],
          tock:0, // Numeration bottom
        },
      }

Registers
=========

.. code-block:: javascript

   {reg: [
       {bits: 2, name: "Machine Nbr", attr: ['Sequentialnumber', '01 - first Machine of Type X', '02 - second Machine of Type X'], type:1},
       {bits: 5, name: "Sequence Nbr", attr: 'Continuous Number', type:2},
       {bits: 2, name: "Type", attr: '02 = Type 2', type:3},
     ],
     config: {bits:9, lanes:1}
   }

.. only:: html or draft

   .. wavedrom::

      {reg: [
          {bits: 2, name: 'Machine Nbr', attr: ['Sequentialnumber', '01 - first Machine of Type X', '02 - second Machine of Type X'], type:1},
          {bits: 5, name: 'Sequence Nbr', attr: 'Continuous Number', type:2},
          {bits: 2, name: 'Type', attr: '02 = Type 2', type:3},
        ],
        config: {bits:9, lanes:1}
      }