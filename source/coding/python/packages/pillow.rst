======
Pillow
======

* `Pillow on PIP  <https://pypi.org/project/Pillow/>`_
* `Pillow RTD <https://pillow.readthedocs.io/en/stable/>`_

Install
=======

.. code-block:: bash

   pip install pillow

Usage
=====

Import
------

.. code-block:: python

   import PIL
   from PIL import Image

Open Image
----------

.. code-block:: python

  from PIL import Image

  im = Image.open("kittens.jpg")
  im.show()
  print(im.format, im.size, im.mode)
  # JPEG (1920, 1357) RGB

:tag:`coding`
:tag:`python`
:tag:`packages`
:tag:`pillow`