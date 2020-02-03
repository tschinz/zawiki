==========
Rune Audio
==========

.. figure:: img/runeaudio.*
   :align: center
   :width: 300px

.. contents:: :local:

`Rune Audio <https://www.runeaudio.com/>`_ is a based on an Archlinux distribution. It is intended to be easy to setup and offers a wide variety of audio tools and supports many different DAC's.
For the Raspberry Pi A+/B+ and 2 a preconfigured image is available with out of the box support for many DAC's.

Features are:

* Webserver
* MPD
* Shairport (Airplay)
* Webradio
* USB
* Samba
* Jamendo
* Spotify
* DLNA

Commandline Tricks
==================

.. code-block:: bash
   :caption: soundcards and attached boards

   aplay -l # Display's available sound cards
   aplay -L # Display's all PCM's

.. code-block:: bash
   :caption: volume mixer

   amixer sset Master 100 #   ~0% Volume
   amixer sset Master 200 # ~100% Volume

Hifiberry Amp+
==============

Add HiFiberry Amp+ to the system. First you need to add the devicetree overlay.

.. code-block:: bash
   :caption: /boot/config.txt>

   device_tree_overlay=hifiberry-amp

Afterwards you need to change the mpd configuration.

.. code-block:: bash
   :caption: /etc/mpd.conf

   audio_output {
           name            "snd_rpi_hifiberry_amp"
           type            "alsa"
           device          "hw:1,0"
           mixer_type      "hardware"
           mixer_control   "Master"
           mixer_device    "hw:1"
           mixer_index     "0"
           auto_resample   "no"
           auto_format     "no"
           enabled         "yes"
   }

Perhaps the file ``/etc/mpd.conf`` will be overwritten on each restart. As a bad fix this can be avoided making the file immutable

.. code-block:: bash

   chattr +i /etc/mpd.conf
