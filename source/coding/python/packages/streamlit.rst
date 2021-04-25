=========
Streamlit
=========

.. figure:: img/streamlit.*
   :align: center
   :width: 30%

`Streamlit <https://www.streamlit.io/>`_ is the fastest way to build data apps.

* `Documentation <https://docs.streamlit.io/en/stable/>`_
* `Sample gallery <https://www.streamlit.io/gallery>`_

Cheatsheet
==========

Instead of listing its funcitionalities here you can find an exhaustive example as standalone repo: `Streamlit Cheastsheet <https://github.com/tschinz/streamlit_cheatsheet>`_

Install
=======

.. code-block:: bash

   pip install streamlit

   streamlit hello


Import
======

.. code-block:: python

   import streamlit as st

   st.title("Hello World")

Run
===

.. code-block:: bash

   streamlit run pythonscript.py

Caching
=======

In order to cache parts of the website, functions which are not needed to be reexecuted each time can be caches with the help of a python decorator.

.. code-block:: bash

   @st.cache(persist=True)
   def someTimeconsumingFunction():
     sleep(100)

:tag:`coding`
:tag:`python`
:tag:`packages`
:tag:`streamlit`