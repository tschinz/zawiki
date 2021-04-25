===========
Plotly Dash
===========

.. figure:: img/plotly_dash/plotly_dash.*
   :align: center
   :width: 150px

* `Plotly Dash Webpage <https://plotly.com/dash/>`_
* `Plotly Dash User Guide <https://dash.plotly.com/>`_


Login Credentials
=================

To enable a password protection there are two solutions offered by plotly dash. One is only via the subscription model on dash enterprise, the other system is free and opensource ``BasicAuth``
Add the following lines to your python code to enable ``BasicAuth`` Login functionalities:

.. code-block:: python

   import dash_auth

   login_credentials = {
     'username': 'password'
   }

   # create dash app
   # ...

   # create authentication on the app
   auth = dash_auth.BasicAuth(app, login_credentials)

   # do more stuff
   # ...


.. warning::

   Login Credentials should ot be save in the python code within the source code repository. It should be saves at least as hash in an external file.

Deploy
======

Dash applications are webpages which have to be deployed on a webserver. It comes integrated with the python flask webserver which can be run locally on the machine by including the following main in your python script.

.. code-block:: python

   if __name__ == '__main__':
      app.run_server()

Local
-----

To start the Dash locally just run the main python scripts

.. code-block:: bash

   $ python app.py
     * Serving Flask app "app" (lazy loading)
     * Environment: production
     WARNING: This is a development server. Do not use it in a production deployment.
     Use a production WSGI server instead.
     * Debug mode: off
     * Running on http://127.0.0.1:8050/ (Press CTRL+C to quit)


Heroku
------

`Heroku <https://dashboard.heroku.com>`_ has free plans to make at your disposal servers which can serve to run the Plotly Dash app.

For that the heroku server can install all requirements of the project the ``requirements.txt`` has to be created if you use ``pipenv`` you can simply freeze your python environment as follows:

.. code-block:: bash

   pip freeze > requirements.txt

Login onto you Heroku profile and create a new app and select the name you want

.. list-table::

   * - .. figure:: img/plotly_dash/heroku_01_create_app.*
          :align: center
          :width: 80%

          Heroku create new app

     - .. figure:: img/plotly_dash/heroku_02_appname.*
          :align: center
          :width: 80%

          Heroku select appname

After you can connect the github repo. It in the repo the plotly dash in configured correctly Heroku detect automatically the app.

.. figure:: img/plotly_dash/heroku_03_connect_to_github.*
   :align: center
   :width: 80%

   Heroku connect to github repo

Once the correct repo is selected define if the app should be deployed now manually or with each commit of a selected branch.

.. figure:: img/plotly_dash/heroku_04_select_deploy.*
   :align: center
   :width: 80%

   Heroku select deploy method

:tag:`coding`
:tag:`python`
:tag:`plotly dash`