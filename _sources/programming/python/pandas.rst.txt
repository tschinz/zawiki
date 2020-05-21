======
Pandas
======

Import
======
The minimum pandas imports are:

.. code-block:: python

   import pandas as pd
   import numpy as np

Import / Export Data
====================

Search for files
---------------

.. code-block:: python

   # List files in a directory
   dirlist = os.listdir(inputDir)
   print("Files from directory ", inputDir)
   for file in dirlist:
     print("  * ", file)

   # Glob search for specific files
   wkbks = glob(os.path.join(os.pardir, 'input', 'xlsx_files_all', 'Ir*.xls'))
   sorted(wkbks)


Excel
-----

.. code-block:: python

   # import excel file
   df = pd.read_excel(filename)

   # import one sheet from excel file
   df = pd.read_excel(filename,sheet_name='Sheet2')

   # define first column as the index
   df = pd.read_excel(filename,sheet_name='Sheet1', index_col=0)

   # import specific columns
   df = pd.read_excel(filename, sheet_name='Sheet1', header=None, skiprows=1, usecols='B,D')

   # export excel file
   df.to_excel(filename, index=False)

CSV
---

.. code-block:: python

   # import csv file
   df = pd.read_csv(filename)

   # export first 10 rows
   df[:10].to_csv(filename, index=False)

H5
--

``H5`` is a file format to efficiently store multiple panda dataframes. During export a dataframe name has to be given, the same key is needed to reimport the dataframe. The ``H5`` format is compressed and encrypted

.. code-block:: python

   # Import H5 File
   if filename:
      with pd.HDFStore(filename) as hdf:
        df = hdf.select(datasetname)
   # Import H5 file
   pd.read_hdf(filename, datasetname)

   # Export H5 File
   with pd.HDFStore(filename, mode='w') as hdf:
     hdf.put(datasetname, df, format='table', data_columns=True)

Copy
====

.. code-block:: python

   # Copy dataframe
   df = df.copy(deep=True)

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
   df.columns.tolist()

   # Get number of columns and rows, cells
   df.shape[0]     # rows
   df.shape[1]     # columns
   df.size         # elements (rows * columns)

   # Count unique values in a column
   len(df['colname'].unique())

Index
=====

.. code-block:: python

   # set index
   df = df.set_index('colname')

   # reset index


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
   df['colname'].tolist()
   df.iloc[:,[4]]
   df.loc[:,['colname']]

   # Access Multiple columns
   df[['colname1', 'colname2']]

   # Access rows (index starts at 0)
   df.loc[20:30]
   df.loc[20:30, ['colname']]
   # get 3 first rows
   df.iloc[0:3]

   # Get unique values
   df['colname'].unique()

   # Get random sample of rows while maintaining index
   df.sample(frac=0.25)

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

Sorting
=======

.. code-block:: python

   # Soft data by value
   df.sort_values('colname', ascending=False)

Aggregating
===========

.. code-block:: python

   # groupby and count
   df.groupby('colname').count()

   # groupby and aggregate
   df.groupby(['colname']).agg({
     'colname1': "sum",
     'colname2': "count",
     'colname3': "first",
     'colname4': "last",

   }).reset_index()

Add
===

.. code-block:: python

   # add new column with initial value True
   df['colname'] = True

Remove
======

.. code-block:: python

   # remove columns
   df.drop(['colname'], axis = 1)

   # keep only a few columns
   df = df[['colname1', 'colname2']]

Iterate over row indices
========================

.. code-block:: python

  for idx, row in df[:2].iterrows():
    print(idx,row)