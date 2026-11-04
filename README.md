# PIXEL PARTY – 2D Multiplayer Game Maker (Prototyp)

Ein eigenständiger, iPad-freundlicher Browser-Prototyp als Ausgangspunkt für euer Spiel.

## Enthalten
- Startmenü, Raumcode und Spielername
- Uni-Modus (Audio der Web-App bleibt stumm) und Spaß-Modus
- 3 zufällige Genre-Vorschläge und Abstimmung
- 3-Minuten-Kreativphase mit Timer
- Pixel-Canvas mit Malen, Radierer, Füllen, Figuren- und Objektstempel
- Beiträge einreichen und Ergänzungswahl
- Rundenwertung und Gesamtpunktestand
- PNG-Export der Pixelgrafik
- Querformat-freundliches responsives Layout

## Wichtig: aktueller Multiplayer-Status
Der mitgelieferte Stand ist ein **lokal spielbarer Frontend-Prototyp**. Räume und Code werden angezeigt, aber ohne Backend sind unterschiedliche Geräte noch nicht miteinander verbunden. Die Benutzeroberfläche enthält daher einen klaren Demo-Hinweis.

Für echten Online-Multiplayer muss ein Supabase-Projekt eingerichtet und die Realtime-Verbindung ergänzt werden. Die Zugangsdaten dürfen nicht öffentlich in ein Repository mit privilegierten Schlüsseln gelangen. Im Browser darf ausschließlich der öffentliche `anon`/publishable key verwendet werden; Tabellen müssen mit passenden Row Level Security Policies abgesichert werden.

## Starten
1. ZIP entpacken.
2. `index.html` in einem modernen Browser öffnen. Für zuverlässiges Clipboard-Verhalten und spätere PWA-Funktionen lokal über einen Webserver bereitstellen.
3. Auf dem iPad in Safari öffnen und über „Teilen → Zum Home-Bildschirm“ ablegen.

## Nächste Entwicklungsstufe
1. Supabase-Projekt anlegen.
2. Realtime Channels für Lobby-Präsenz und Events konfigurieren.
3. Serverautoritative Rundenphasen und Timer ergänzen.
4. Gemeinsamen Projektzustand (Pixelmap, Objekte, Beiträge, Votes, Scores) synchronisieren.
5. Genreabhängige spielbare Minigames und vollständigen Logic-/Map-Editor ergänzen.

## Punkte-Regeln im Prototyp
- Beste Ergänzung: +5
- Rundensieger: +5
- Letzter Platz: −3

Die Bewertung der Rundenleistung ist im Prototyp eine manuelle Auswahl. Eine automatische, genreabhängige Spielauswertung ist ein weiterer Entwicklungsschritt.

## Projektstruktur
- `index.html` – komplette Frontend-Oberfläche und lokale Prototyp-Logik
- `README.md` – Anleitung und Status
- `supabase_schema.sql` – Startschema für Räume, Spieler und Events (noch nicht mit dem Frontend verdrahtet)
