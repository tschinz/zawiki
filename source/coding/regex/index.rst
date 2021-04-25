=====
RegEx
=====

.. figure:: img/logo.*
   :align: center
   :width: 150px

* :znotes_repo:`RegEx Cheatsheet <blob/master/source/cpoding/regex/docs/regex_cheatsheet.pdf>` - from `Added Bytes <http://www.addedbytes.com/cheat-sheets/regular-expressions-cheat-sheet/>`_
* Test your regex with `Regexr <https://regexr.com/>`_

Anchors
=======

.. code-block::

   ^              # Start of line
   \A             # Start of string
   $              # End of line
   \Z             # End of string
   \b             # Word boundary
   \B             # Not word boundary
   \<             # Start of word
   \>             # End of word

Character Classes
=================

.. code-block::

   \c             # Control character
   \s             # White space
   \S             # Not whit space
   \d             # Digit
   \D             # Not digit
   \w             # Word
   \W             # Not word
   \xhh           # Hexadecimal character hh
   \Oxxx          # Octal character xxx

POSIX Character Classes
=======================

.. code-block::

   [:upper:]      # Upper case letters
   [:lower:]      # Lower case letters
   [:alpha:]      # All letters
   [:alnum:]      # Digits and letters
   [:digit:]      # Digits
   [:xdigit:]     # Hexadecimal digits
   [:punct:]      # Punctuation
   [:blank:]      # Space and tab
   [:space:]      # Blank characters
   [:cntrl:]      # Control characters
   [:print:]      # Printed characters and spaces
   [:word:]       # Digits, letter and underscore

Assertions
==========

.. code-block::

   ?=             # Lookahead assertion
   ?!             # Negative lookahead
   ?<=            # Lookbehind assertion
   ?!= or ?<!     # Negative lookbehind
   ?>             # Once-only Subexpression
   ?()            # Condition [if then]
   ?()|           # Condition [if then else]
   ?#             # Comment

Quantifiers
===========

.. code-block::

   *              # 0 or more
   *?             # 0 or more, ungreedy
   +              # 1 or more
   +?             # 1 or more, ungreedy
   ?              # 0 or 1
   ??             # 0 or 1, ungreedy
   {3}            # Exactly 3
   {3,5}          # 3, 4 or 5
   {3,5}?         # 3, 5 or 5 ungreedy

Special Characters
==================

.. code-block::

   \              # Escape Character
   \n             # New line
   \r             # Carriage return
   \t             # Tab
   \v             # Vertical tab
   \f             # Form feed
   \a             # Alarm
   [\b]           # Backspace
   \e             # Escape
   \N{name}       # Named Character

String replacement
==================

.. code-block::

   $n             # nth non passive group
   $2             # "xyz" in /^(abc(xyz))$/
   $1             # "xyz" in /^(?:abc(xyz))$/
   $`             # Before matched string
   $'             # After machted string
   $+             # Last machted string
   $&             # Entire matched string
   $_             # Entire input string
   $$             # Literal $

Ranges
======

.. code-block::

   .              # Any character except new line (\n)
   (a|b)          # a or b
   (...)          # Group
   (?:...)        # Passive Group
   [abc]          # Range (a or b or c)
   [^abc]         # Not (a or b or c)
   [a-q]          # Letter between a and q
   [A-Q]          # Upper case letter between A and Q
   [0-7]          # Digit between 0 and 7
   \n             # nth group/subpattern

Pattern Modifiers
=================

.. code-block::

   g              # Global match
   i              # Case-insensitive
   m              # Multiple lines
   s              # Treat string as single line
   x              # Allow comments and white space in pattern
   e              # Evaluate replacement
   U              # Ungreedy pattern

Metacharacters
==============

These Characters must be escaped with ``\``

.. code-block::

   ^  <  >  *
   $  {  ]  +
   |   (  )
   \   ?  .

Example Patterns
================

.. code-block::

   ([A-Za-Z0-9-]+)           # Letter, numbers and hyphens
   (\d{1,2}\/\d{1,2}\/\d{4}) # Date (e.g. 31/3/2006)
   ([^\s]+(?=\.(jpg|gif|png))\.\2) # jpg, gif or png image

:tag:`coding`
:tag:`regex`
