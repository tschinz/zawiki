========
PlantUml
========


.. figure:: img/plantuml.*
   :align: center
   :width: 150px

.. contents:: :local:

Sequence Diagram
================

.. uml::

   participant Alice
   participant "The **Famous** Bob" as Bob

   Alice -> Bob : hello --there--
   ... Some ~~long delay~~ ...
   Bob -> Alice : ok
   note left
     This is **bold**
     This is //italics//
     This is ""monospaced""
     This is --stroked--
     This is __underlined__
     This is ~~waved~~
   end note

   Alice -> Bob : A //well formatted// message
   note right of Alice
    This is <back:cadetblue><size:18>displayed</size></back>
    __left of__ Alice.
   end note
   note left of Bob
    <u:red>This</u> is <color #118888>displayed</color>
    **<color purple>left of</color> <s:red>Alice</strike> Bob**.
   end note
   note over Alice, Bob
    <w:#FF33FF>This is hosted</w> by <img img/plantuml-logo.png>
   end note

Use Case Diagram
================

.. uml::

   :Main Admin: as Admin
   (Use the application) as (Use)

   User -> (Start)
   User --> (Use)

   Admin ---> (Use)

   note right of Admin : This is an example.

   note right of (Use)
     A note can also
     be on several lines
   end note

   note "This note is connected\nto several objects." as N2
   (Start) .. N2
   N2 .. (Use)

Class Diagram
=============

.. uml::

   Object <|-- ArrayList

   Object : equals()
   ArrayList : Object[] elementData
   ArrayList : size()

.. uml::

   class Foo1 {
     You can use
     several lines
     ..
     as you want
     and group
     ==
     things together.
     __
     You can have as many groups
     as you want
     --
     End of class
   }

   class User {
     .. Simple Getter ..
     + getName()
     + getAddress()
     .. Some setter ..
     + setName()
     __ private data __
     int age
     -- encrypted --
     String password
   }

Activity Diagram
================

.. uml::

   (*) --> "Initialization"

   if "Some Test" then
     -->[true] "Some Activity"
     --> "Another activity"
     -right-> (*)
   else
     ->[false] "Something else"
     -->[Ending process] (*)
   endif

.. uml::

   title Servlet Container

   (*) --> "ClickServlet.handleRequest()"
   --> "new Page"

   if "Page.onSecurityCheck" then
     ->[true] "Page.onInit()"

     if "isForward?" then
      ->[no] "Process controls"

      if "continue processing?" then
      -->[yes] ===RENDERING===
      else
      -->[no] ===REDIRECT_CHECK===
      endif

     else
      -->[yes] ===RENDERING===
     endif

     if "is Post?" then
     -->[yes] "Page.onPost()"
     --> "Page.onRender()" as render
     --> ===REDIRECT_CHECK===
     else
     -->[no] "Page.onGet()"
     --> render
     endif

   else
     -->[false] ===REDIRECT_CHECK===
   endif

   if "Do redirect?" then
    ->[yes] "redirect request"
    --> ==BEFORE_DESTROY===
   else
    if "Do Forward?" then
     -left->[yes] "Forward request"
     --> ==BEFORE_DESTROY===
    else
     -right->[no] "Render page template"
     --> ==BEFORE_DESTROY===
    endif
   endif

   --> "Page.onDestroy()"
   -->(*)

MindMaps
========

.. uml::

   @startmindmap
   + OS
   ++ Ubuntu
   +++ Linux Mint
   +++ Kubuntu
   +++ Lubuntu
   +++ KDE Neon
   ++ LMDE
   ++ SolydXK
   ++ SteamOS
   ++ Raspbian
   -- Windows 95
   -- Windows 98
   -- Windows NT
   --- Windows 8
   --- Windows 10
   @endmindmap