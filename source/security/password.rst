========
Password
========

.. figure:: img/password_strength.png
   :align: center


Damit Sie ein sicheres Passwort haben müssen sie folgende Schritte
erledigen

#. Ihre Passwörter kontrollieren
#. Neues sicheres Passwort erstellen und sich einprägen
#. Regelmässig Passwort wechseln

Einleitung
==========

Wer kennt das nicht: man hat sich bei einem neuen Service angemeldet, oder auf dem Server steht der monatliche Passwort-Wechsel an, und es fällt und fällt einem kein Passwort ein, das den Anforderungen des Sicherheits-Konzeptes genügt: entweder, es ist zu kurz, oder es ist nicht kryptisch genug, oder es ist zu kryptisch, und man kann es sich nicht merken. Schließlich, weil man keine Lust mehr hat, sucht man sich ein beliebiges, leider meist unsicheres Passwort aus.

Mit diesem kleinen Artikel möchte ich sowohl etwas mehr Sicherheitsbewusstsein wecken, als auch die Wahl eines sicheren Passworts durch das Verständnis, wie so ein Passwort aufgebaut ist, erleichtern. Ich will jedoch gleich vorneweg sagen: die Vergabe von sicheren Passwörtern erfordert viel Disziplin vom User selbst!

Warum ein sicheres Passwort wichtig ist
=======================================

Viele Leute denken sich NICHTS bei der Vergabe von Passwörtern. Doch dabei ist dieser Vorgang enorm wichtig.

Viel Computer-Kriminalität könnte vermieden werden, wenn mehr Endanwender ihren "inneren Schweinehund" überwinden und vernünftige Passwörter vergeben würden. Doch im gleichen Maß sind die Shop-Betreiber, Sicherheits-Beauftragten und andere, die für Passwortakzeptanz oder Passwortvorschläge zuständig sind, Schuld: ich habe bisher noch keinen Webshop mit Plausiblitätsprüfung des Passwortes gesehen. Ausserdem sollten auch bei Webshops die Generalpasswörter sicher gewählt werden um unerlaubtes Spionieren der Kundenpasswörter zu vermeiden.

Sicher werden jetzt viele sagen "Wer will schon ausgerechnet mir Böses?", oder "Wer will schon ausgerechnet meine E-Mails lesen?". Aber darum geht es ja gar nicht. Dem Angreifer ist es (meist) egal, wessen Account-Passwort er bekommt. Er interessiert sich auch nicht unbedingt für Ihre Mails. Ihn interessiert nur, wie er in das System hinein kommt. Denn hat er erstmal Zugriff, ist im Grunde der Krieg verloren. Es kann Sachen bestellen auf Ihren Namen und E-mail von Ihrem Namen aus senden.

Top 10: Passwörter
==================

Liste der 10 meistbenützten Passwörter

- Platz Nr. 1: Einfache Zahlenkombinationen, wie 12345.
- Platz Nr. 2: Zahlenkombinationen, die an ein Produkt erinnern, wie 4711, 911, X5, A6.
- Platz Nr. 3: Das Wort Passwort selbst.
- Platz Nr. 4: Kosenamen wie Schatz.
- Platz Nr. 5: Das Wort Baby.
- Platz Nr. 6: Jahreszeiten wie Sommer und Winter.
- Platz Nr. 7: Das Wort Hallo.
- Platz Nr. 8: Namen von Großstädten, wie Zürich, Paris oder NewYork.
- Platz Nr. 9: Der eigenen Vornamen.
- Platz Nr. 10: Der Vorname der Frau/FreundinFreund/Mann

Aufbau eines (relativ) sicheren Passworts
=========================================

Ein sicheres Passwort besteht sinnvollerweise aus Groß- und Kleinbuchstaben sowie aus Ziffern. Es enthält keine (wahrnehmbare) Systematik und ist wenigstens 8 Zeichen lang. Es sollte kein Wort einer bekannten Sprache sein (z. B. Englisch, Deutsch oder Französisch).

Sicherheits-Freaks neigen dazu, sogenannte "Tastatur-Hacks" zum Erzeugen von Passwörtern zu verwenden. Dabei handelt es sich um ein einmaliges, sinnloses und blindes Zehnfinger-Einhacken auf die Tastatur - man merkt sich nicht das Passwort allgemein, sondern nur die Zeichenfolge wie es auf der Tastatur eingegeben wird. Solche Passwörter sind natürlich extrem "sicher". Denn wer z.B. in Anwesenheit anderer Personen ein Passwort eingeben muss, sollte das unauffällig und schnell tun können. Wer in einer solchen Situation auf das "Adlersystem" bei der Eingabe angewiesen ist, erleichtert den Anwesenden nur das unauffällige Mitverfolgen der eingegebenen Zeichenfolge.

.. note::

   Gute Passwörter sollten also einen Mittelweg zwischen nicht erratbaren Zeichenfolgen und merkbaren Zeichenfolgen darstellen. Ein Tastaturhack ist eine einfaches und gutes Password.

Password Generator
------------------

Wer zu unkreativ ist sich ein eigenes "sicheres" Passwort auszudenken, kann mit folgender Seite einfach zu merkenden aber denoch sicherePasswörter von verschiedenen Längen, automatisch generieren lassen.

- `Keepass <https://keepass.info/>`_
- `Safepasswd <http://www.safepasswd.com>`_
- `Generista <http://generista.com>`_

.. figure:: img/password_generator.png
   :align: center

   Keepass Password Generator

Password Reuse
--------------

Pro Plattform sollte immer ein kompletes einzigartiges Password erstellen. Abwandlungen können relative schnell entdeckt und ausgebeutet werden.

.. figure:: img/password_reuse.png
   :align: center

Wie lang sollte ein Passwort sein
---------------------------------

Die Frage ist so leicht nicht zu beantworten. Das hängt vom Sicherheitsbereich ab. Generell kann man sagen, eine Mindestlänge von 8 Zeichen ist sinnvoll: 8 Zeichen bedeuten 191707312997281 Kombinationen bei der Zeichenklasse a-zA-Z1-9 (= 61 Zeichen). Das würde bei einer Million Tastenanschläge pro Sekunde eine Maximalzeit von ca. 53252 Stunden (191707312,997281 Sekunden) bedeuten (fast 6 Jahre). Das ist schon mal eine ganz ordentliche Zeit :-)

Zur Einschätzung mal eine kleine Tabelle: Mindestlänge maximal benötigte Zeit (bei angenommener 1 Million Tastaturanschlägen pro Sekunde)

+----------------+----------------------+
| Anzahl Zeichen | Brute Force Zeit     |
+================+======================+
| 3 Zeichen      | 0,2 Sekunden         |
+----------------+----------------------+
| 5 Zeichen      | 14 Minuten           |
+----------------+----------------------+
| 8 Zeichen      | 53252 Stunden        |
+----------------+----------------------+
| 10 Zeichen     | 1179469 Wochen       |
+----------------+----------------------+
| 12 Zeichen     | 84168853 Jahre       |
+----------------+----------------------+
| 15 Zeichen     | 19104730610573 Jahre |
+----------------+----------------------+

Doch nun kommt die Ernüchterung. Alle diese Angaben sind sogenannte Maximalzeiten! Maximalzeit bedeutet: wenn jemand in der angegebenen Geschwindigkeit versucht, das Passwort zu knacken, und erst die allerletzte eingegebene Zeichenkombination die richtige ist, dann dauert es so lange wie angegeben. Aber theoretisch könnte ja auch schon die allererste eingegebene Zeichenkombination richtig sein. Dann hat es nur eine hunderttausendstel Sekunde gedauert, um das Passwort zu knacken - trotz 15 Zeichen. Es kann also durchaus sein, dass ein Angreifer ein Passwort innerhalb weniger Sekunden herausgefunden hat. Zufall eben. Deshalb sollte man sich bei 8 Zeichen durchaus nicht in Sicherheit wägen. Außerdem kommt es auch auf die Rechenleistung an: hier wurde mit einer Millionen Tanstenanschlägen pro Sekunde gerechnet. Andere, bessere, später gebaute Rechner schaffen Millionenfache. Dies drängt auch immer mehr in den vordergrund mit den Grafikkarten Brute-Force Attacken. Als Beispiel eine neue Nividia Grafikkarte mit CUDA verfügt über 256 Prozessor kerne, die Taktfrequenz eins solchen Kerns kann ungefähr 500MHz betragen. Damit kann die Grafikkarte pro Sekunde 128E9 = 128000000000 Passwörter testen.

Natürlich sollte man auch noch hinzufügen, dass viele Zugangssysteme einen einloggenden Gast nach soundsoviel Fehlversuchen aus dem System werfen. Dann muss sich dieser, wenn er es wieder versuchen will, mit einer neuen Identität, im Internet z.B. manchmal auch mit einer anderen IP-Adresse anmelden. Solche Dinge kann ein Angreifer allerdings bis zu einem gewissen Grad automatisieren.

Links
-----

* `Wikipedia Artikel zum Thema Passwort <http://en.wikipedia.org/wiki/Password>`_
* `Hilfreicher Artikel  <http://aktuell.de.selfhtml.org/artikel/gedanken/passwort/>`_