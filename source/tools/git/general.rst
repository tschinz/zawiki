===========
Git General
===========

Global setup
============

.. code-block:: bash

   git config --global user.name "Silvan Zahno"
   git config --global user.email "silvan.zahno@hevs.ch"

Check setup
-----------

.. code-block:: bash

   git config --list


Save Credentials
----------------

.. code-block:: bash

   git config credential.helper store


Not verify https Certificates
-----------------------------

.. code-block:: bash

   git config --global http.sslVerify false


Git Repo Creation / Cloning
===========================

Create new repository
---------------------

.. code-block:: bash

   git init


Clone existing repository
-------------------------

.. code-block:: bash

   git clone git@gitlab.hevs.ch:course/ElN/eln_labs.git
   cd eln_labs
   touch README.md
   git add README.md
   git commit -m "add README"
   git push -u origin master


Existing folder
---------------

.. code-block:: bash

   cd existing_folder
   git init
   git remote add origin git@gitlab.hevs.ch:course/ElN/eln_labs.git
   git add .
   git commit -m "Initial commit"
   git push -u origin master


Switch to new Remote
--------------------

.. code-block:: bash

   cd existing_repo
   git remote rename origin old-origin
   git remote add origin git@gitlab.hevs.ch:course/ElN/eln_labs.git
   git push -u origin --all
   git push -u origin --tags


Get Remote Information
----------------------

.. code-block:: bash

   git remote show origin


Change Push Remote URL
----------------------

.. code-block:: bash

   git remote set-url --push <new_repo_push_url>


Git Repo information
====================

.. code-block:: bash

   # Status about current files ion folder
   git status

   # Status about last commits
   git log --oneline


Add Files
=========

.. code-block:: bash

   # Stage a File
   git add README.md

   # Commit file
   git commit –m "Initial commit, add README file"


Checkout
========

.. code-block:: bash

   # Checkout certain commit
   git checkout e006db0 -b inspectingPrev

   # Checkout given branch
   git chekout master


Push
====

.. code-block:: bash

   git push origin master


Branch
======

.. code-block:: bash

   # Create new branch
   git branch dev_branch_1

   # List all existing branches
   git branch

   # Checkout certain branch
   git branch dev_branch_1

   # Delete certain branch
   git branch -d dev_branch_1


Merge
-----

.. code-block:: bash

   # Checkout branch you want to merge into
   git checkout master
   # Merge the two branches
   git merge dev_branch_1

