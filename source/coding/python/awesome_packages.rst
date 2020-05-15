================
Awesome Packages
================


.. figure:: img/awesome.*
   :align: right
   :width: 150px


Fuzzywuzzy
==========

`Fuzzywuzzy <https://github.com/seatgeek/fuzzywuzzy>`_ is a native python fuzzy string matching library. It uses `Levenshtein Distance <https://en.wikipedia.org/wiki/Levenshtein_distance>`_ to calculate the differences between sequences in a simple-to-use package.

Install
-------

.. code-block:: bash

   pip install fuzzywuzzy

Usage
-----

Import
^^^^^^

.. code-block:: python

   from fuzzywuzzy import fuzz
   from fuzzywuzzy import process

Simple Ratio
^^^^^^^^^^^^

.. code-block:: python

   fuzz.ratio("this is a test", "this is a test!")
   # 97

Partial Ratio
^^^^^^^^^^^^^

.. code-block:: python

   fuzz.partial_ratio("this is a test", "this is a test!")
   # 100

Process
^^^^^^^

.. code-block:: python

   choices = ["Atlanta Falcons", "New York Jets", "New York Giants", "Dallas Cowboys"]
   process.extract("new york jets", choices, limit=2)
   # [('New York Jets', 100), ('New York Giants', 78)]

   process.extractOne("cowboys", choices)
   # ("Dallas Cowboys", 90)

TQDM
====

Install
-------

.. code-block:: bash

   pip install tqdm


Usage
-----

trange
^^^^^^

.. code-block:: python

   from tqdm import trange

   for i in trange(100):
     sleep(0.01)


.. code-block:: bash

   36%|██████████████                                 | 36/100 [00:18<00:32,  2.00it/s]



.. code-block:: python

   from tqdm import tqdm

   for e in tqdm([1,2,3,4,5,6,7,8,9]):
     sleep(0.01)


.. code-block:: bash

   50%|███████████████████                               | 5/9 [00:18<00:32,  2.00it/s]
