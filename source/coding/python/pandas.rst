======
Pandas
======

Import
======
The minimum pandas imports are:

.. code-block:: python

   import pandas as pd
   import numpy as np

Import Excel
============

.. code-block:: python

   wkbks = glob(os.path.join(os.pardir, 'input', 'xlsx_files_all', 'Ir*.xls'))
   sorted(wkbks)

   filename = 'Iris.xlsx'

   # import excel file
   df = pd.read_excel(filename)

   # import one sheet from excel file
   df = pd.read_excel(filename,sheet_name='Sheet2')

   # define first column as the index
   df = pd.read_excel(filename,sheet_name='Sheet1', index_col=0)

   # import specific columns
   df = pd.read_excel(filename, sheet_name='Sheet1', header=None, skiprows=1, usecols='B,D')

Access informations
===================

.. code-block:: python

   # General informations
   df.info()

   # Get begin data
   df.head()
   df.head(10)

   # Get end data
   df.tail()
   df.tail(10)

   # Get columns
   df.columns

   # Get number of columns and rows, cells
   df.shape[0]     # rows
   df.shape[1]     # columns
   df.size         # elements (rows * columns)

Statistic
=========

.. code-block:: python

   df.describe()

   # counter values
   pd.value_counts(df['colname'])

   # Count non-NA values
   df.count(axis=0)

   # sum
   df.sum(axis=0) # 0 for column wise total
   df.sum(axis=1) # row wise sum

   # sum based on criteria
   df[df['colname'] == value].sum()
   df[df['colname'].map(lambda x: x.endswith('sa')) & (df['colname2'] > 5.1)].sum()

   # Average
   df[df['colname'] == value].mean()
   df[df['colname'].map(lambda x: x.endswith('sa')) & (df['colname2'] > 5.1)].mean()

   # Max / Min
   df[df['colname'] == value].max()
   df[df['colname'] == value].min()

Pivot
=====

Pivot table is similar to GroupBy Methods. I allows to group a table and quickly


Access Data
===========

.. code-block:: python

   # Access specific columns
   df['colname']
   df.iloc[:,[4]]
   df.loc[:,['colname']]

   # Access Multiple columns
   df[['colname1', 'colname2']]

   # Access rows (index starts at 0)
   df.loc[20:30]
   df.loc[20:30, ['colname']]

   # Get unique values
   df['colname'].unique()

Sort
====


Filter
======

.. code-block:: python

   # Filter for values in column
   df[df['colname'] == value]
   df[df['colname'].isin([value1, value2])]

   # Filter all NOT in list
   df[~df['colname'].isin(values)]

   # Filter numberic conditions
   df[df['colname'] == 5.1]
   df[df['colname'] > 5.1]

   # Custom Filter
   df[df['colname'].map(lambda x: x.endswith('sa'))]

   # Combine filters
   df[df['colname'].map(lambda x: x.endswith('sa')) & (df['SepalLength'] > 5.1)]

   # Contain filter
   df[df['colname'].str.contains('set')]

   # drop duplicates
   df.drop_duplicates(subset=['colname'])

Remove
======

.. code-block:: python

   # remove columns
   df.drop(['colname'], axis = 1)
