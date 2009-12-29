# language: de
Funktionalität: Punkteberechnung
  Als Spieler
  Will ich, dass das System meine Punktezahl berechnet
  Damit ich weiss wie gut ich bin
  
  
  Szenario: Vollkommener Anfänger
	Gegeben sei eine neue Bowling Partie
	Wenn alle meine Kugeln in der Seitenrinne landen
	Dann soll meine Puktzahl 0 sein
	
  Szenario: Profi
	Gegeben sei eine neue Bowling Partie
	Wenn ich alles Strikes werfe
	Dann soll meine Puktzahl 300 sein
	
  Szenario: Der erste Anfänger
    Gegeben sei eine neue Bowling Partie
    Wenn ich 2 und 7 werfe
    Und ich 3 und 4 werfe
    Und ich 8 mal 1 und 1 werfe
	Dann soll meine Puktzahl 32 sein
	
  Szenario: Der zweite Anfänger
    Gegeben sei eine neue Bowling Partie
    Wenn ich die folgende Serie werfe:	2,7,3,4,1,1,5,1,1,1,1,1,1,1,1,1,1,1,5,1
	Dann soll meine Puktzahl 40 sein

  Szenario: Ein einziger Spare
    Gegeben sei eine neue Bowling Partie
    Wenn ich die folgende Serie werfe:	3,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	Dann soll meine Puktzahl 29 sein
	
  Szenario: Alles Spares
    Gegeben sei eine neue Bowling Partie
    Wenn ich 10 mal 1 und 9 werfe
	Und ich 1 werfe
	Dann soll meine Puktzahl 110 sein	