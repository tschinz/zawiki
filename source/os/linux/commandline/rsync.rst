=====
RSync
=====

Synchronizing directories local and remotely

.. code-block:: bash
   :caption: rsync

   # Synchronising directories to distant computer
   rsync -avzP --rsh='ssh -p YYYY' /localpath/to/dir user@host:/remotepath/to/dir

   # Synchronizing local left to right
   rsync -avP --delete --stats /source/folder/* /destination/folder

   # Synchronizing and exclude a folder or file
   rsync -avP --delete --stats --exclude 'excl_folder' --exclude 'folder/excl_file.txt' /source/folder/* /destination/folder
   rsync -avP --delete --stats --exclude-from '/home/user/exclude.txt' /source/folder/* /destination/folder

.. code-block::
   :caption: exclude.txt

   sources
   public_html/database.*
   downloads/test/*

.. note::

   **Flags**

   .. code-block::

      -a = archive (recursion & preserve rights, time, owner, group)\\
      -v = verbose \\
      -z = compress during transfer \\
      -P = display progress \\
      --delete = delete files on destination folder \\
      --stats = display some statisics at the end \\
      --exclude <PATTERN> = exclude file or folder \\
      --exclude-from <file> = exclude list defined in file
      --dry-run = show what would have been done
