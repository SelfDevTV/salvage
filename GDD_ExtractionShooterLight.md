# Game Design Document: Extraction Shooter Light

**Version:** 0.2 (Korrigiert)
**Datum:** 24. Oktober 2025  
**Status:** Early Concept / Prototyping Phase

---

## 1. Vision & Core Concept

### High-Level Pitch
Ein 2D Top-Down Extraction Shooter mit Fokus auf Crafting-Progression. Der Spieler startet nackt mit einem Messer, sammelt Komponenten in gefährlichen Zonen, und baut sich Schritt für Schritt ein permanentes Arsenal auf. Gecraftete Items bleiben für immer - die Progression ist direkt sichtbar und fühlbar.

### Kern-Loop
1. **Run starten:** Spawne mit allen bisher gecrafteten Items (Start: nur Messer)
2. **Run:** In Zone gehen → Kisten durchwühlen → Komponenten sammeln → zu Extraction Point
3. **Post-Run:** Komponenten nutzen zum Craften neuer Items oder Upgraden bestehender
4. **Repeat:** Mit stärkerem Arsenal zurück in schwierigere Zonen

### Warum spielt man weiter?
- **Sichtbare Progression:** Dein Arsenal wächst permanent - vom Messer zum voll ausgestatteten Fighter
- **Crafting-Projekte:** "Endlich habe ich die seltene Komponente für den AK-Schalldämpfer!"
- **Mastery:** Aus "One-Hit-Tod" wird "One-Shot-Kills"
- **End-Game:** Boss-Challenges und höchste Schwierigkeitsstufen meistern

---

## 2. Core Mechanics

### 2.1 Permanente Items & Progression
**Kern-Konzept:** Was du craftets, BLEIBT.

- **Start:** Nur ein Messer
- **Nach erstem erfolgreichen Run:** Craftest z.B. einen Bogen
- **Nächster Run:** Startest automatisch mit Messer + Bogen
- **Weitere Runs:** Arsenal wächst kontinuierlich

**Keine Loadout-Wahl:**
- Kein Pre-Run-Menü zum Equipment auswählen
- Du hast einfach alles was du gebaut hast
- Progression ist immer sichtbar

### 2.2 Inventory System
- **Begrenzte Slots** im Inventar während des Runs
- **Save Slot(s):** 
  - Start: 1 Save Slot (überlebt Tod)
  - Upgrade: Mehr Slots mit sehr seltenen Komponenten
- **Tod:** Alles außer Save-Slot-Items geht verloren
- **Erfolg:** Alle gesammelten Komponenten bleiben permanent

### 2.3 Loot & Durchwühlen
- **Truhen-Interaktion:**
  - Spieler drückt "F" an Truhe
  - UI öffnet sich mit Truhen-Slots (z.B. 4 Slots)
  - Items sind initial ausgegraut
  - "Durchwühl-Animation" läuft über jedes Item (~0.8s pro Item)
  - Item wird aufgedeckt nach Animation
  - **EP-Gain:** Jedes durchwühlte Item gibt EP (unabhängig vom Wert)

- **Rarity-System:**
  - Common (weiß)
  - Uncommon (grün)
  - Rare (blau)
  - Epic (lila)
  - Legendary (orange/gold)
  - Höhere Rarities = seltener, bessere Komponenten für Upgrades

### 2.4 Crafting System
**Das Herz des Spiels**

- **Item-Typen:**
  - Waffen (Messer, Bogen, Pistolen, Gewehre)
  - Rüstung
  - Gadgets (Granaten, etc.)
  
- **Crafting-Prozess:**
  - Komponenten sammeln
  - Item craften (wird PERMANENT besessen)
  - Item weiter upgraden mit zusätzlichen Komponenten
  
- **Beispiele:**
  - Messer → Kleiner Griff Upgrade = fliegt schneller/weiter beim Werfen
  - Granate craften → Splitter-Upgrade = mehr Schaden-Radius
  - AK craften → Schalldämpfer = benötigt seltene Komponenten
  - Bogen → Schnellere Spannmechanik = höhere Feuerrate

- **Spieler-Entscheidung:** 
  - Welches Projekt zuerst?
  - Neue Waffe oder bestehendes Item upgraden?
  - Spieler setzt eigene Prioritäten

**Wichtig:** Gecraftete Items verschwinden NIE wieder. Du baust dir ein permanentes Arsenal auf.

### 2.5 Combat System
- **Start:** Nur Messer (werfbar, einsammelbar)
- **Progression:** 
  - Craftest Bogen → hast jetzt Messer + Bogen
  - Craftest Pistole → hast Messer + Bogen + Pistole
  - Jedes neue Item erweitert deine Optionen
  
- **Gegner:** 
  - Anfangs: Leichte bis mittlere Challenge (mit nur Messer schwer)
  - Mit besserem Gear: Werden zu One-Shots
  - Höhere Zonen: Stärkere Gegner die auch mit gutem Gear gefährlich sind
  
- **Gegner-Verhalten:** TBD (Teil des Risiko-Tests)

### 2.6 Zonen & Schwierigkeit
- **Zonen-Typen:**
  - Zone 1: Verlassene Vorstadt (Basic Materials)
  - Zone 2: Industriegebiet (Metall-Komponenten)
  - Zone 3: Militärbasis (Waffen-Komponenten)
  - Zone 4: Forschungslabor (Experimentelle Tech)
  - Zone 5: ??? (End-Game Zone)

- **Loot-Distribution:**
  - Jede Zone hat primären Loot-Typ
  - Seltene Chance auf Loot aus anderen Zonen
  - Spieler kann gezielt nach Komponenten farmen

- **Schwierigkeits-Wahl:**
  - Spieler wählt vor Run: Zone + Schwierigkeitsgrad (1-5)
  - Höhere Schwierigkeit = besserer/mehr Loot
  - Höhere Schwierigkeit = gefährlichere/mehr Gegner

### 2.7 Extraction
- **Extraction Point:**
  - Random platziert mit fester Distanz zum Spawn
  - Spieler muss dorthin um Run zu beenden
  - Sichtbar auf Minimap (wenn vorhanden) oder durch Marker
  
- **Bei Tod:** 
  - Verlust aller Komponenten außer Save-Slot
  - Gecraftete Items bleiben (sie sind ja permanent)
  - EP bleibt erhalten

### 2.8 Progression (Meta)
- **EP-System:** 
  - Verdient durch Durchwühlen von Items
  - Verwendung: TBD (permanente Upgrades? Skill-Tree? Zone-Unlocks?)
  
- **Keine Economy:**
  - Kein Gold
  - Kein Händler
  - Kein Verkaufen von Items
  - Komponenten sind die einzige Währung
  
- **End-Game:**
  - Boss-Challenges in höchsten Zonen
  - Alle Crafting-Projekte abschließen
  - Perfekte Builds erstellen

---

## 3. Technical Specs

### Engine & Tools
- **Engine:** Godot 4.5
- **Perspektive:** 2D Top-Down
- **Art Style:** TBD
- **Plattform:** PC (initial)

### Core Systems (Priority Order)
1. Player Movement (CharacterBody2D)
2. Truhe-Interaktion + Durchwühl-UI
3. Item-Generation + Rarity
4. Inventar-System
5. Crafting-System (permanente Items)
6. Gegner-AI
7. Combat-System
8. Zonen-System
9. Extraction-Mechanik
10. Meta-Progression (EP, Unlocks)

---

## 4. Risk Assessment

### Kritisches Risiko
**"Fühlt sich die 2D Top-Down Welt interessant genug an?"**

- Gegner-Verhalten: Wie reagieren sie auf Spieler?
- World Design: Wie verhindert man Langeweile in 2D?
- Combat Feel: Funktioniert Shooting/Melee in Top-Down?

### Risiko-Mitigation
- **Early Prototype:** Minimale Welt + 1 Gegner-Typ testen
- **Referenz-Recherche:** Enter the Gungeon, Hotline Miami, Nuclear Throne analysieren
- **Iteratives Testen:** Verschiedene Gegner-Verhaltensweisen ausprobieren

---

## 5. MVP Scope (Minimum Viable Product)

### Must-Have für MVP
- [ ] Player Movement in kleiner Test-Map
- [ ] 1 Truhe mit Durchwühl-Mechanik
- [ ] 3-5 verschiedene Komponenten mit Rarity
- [ ] Basic Inventar mit Save-Slot
- [ ] 2-3 craftbare Items (z.B. Bogen, Pistole, Granate)
- [ ] Items bleiben permanent nach Craft
- [ ] 1 Gegner-Typ mit Basic AI
- [ ] Extraction Point + Win-Condition
- [ ] Tod = Verlust aller Komponenten (außer Save-Slot)

### Nice-to-Have
- [ ] Multiple Zonen (mindestens 2)
- [ ] Schwierigkeitsgrade pro Zone
- [ ] Upgrade-System für gecraftete Items
- [ ] EP-System mit Verwendung
- [ ] Multiple Crafting-Projekte mit Upgrade-Bäumen

### Out of Scope (für MVP)
- Händler/Gold-System (nicht mehr Teil des Konzepts)
- Meta-Progression-System (außer EP)
- Boss-Fights
- Multiplayer/PvP
- Story/Narrative
- Sound & Musik
- Polished Art

---

## 6. Open Questions & Design Decisions

### Zu klären:
- **Gegner-AI:** Wie verhalten sie sich? Line of Sight? Patrol? Aggressive Verfolgung?
- **EP-Verwendung:** Permanente Upgrades? Skill-Tree? Unlock-System?
- **World Design:** Wie interessant wird 2D Top-Down? Umgebungs-Interaktionen?
- **Combat Feel:** Wie fühlt sich Waffen-Switching an? Hotkeys? Radial Menu?
- **Balance:** Wie schnell soll Progression sein? Wie viele Runs bis zum ersten Craft?
- **Art Style:** Pixel Art? Low-Poly? Sketch-Style?

### Design-Entscheidungen für später:
- Sollen Runs zeitlich begrenzt sein?
- Noise-System (Lärm zieht Gegner an)?
- Ammo-System oder unbegrenzte Ammo?
- Durability (Waffen nutzen sich ab)?

---

## 7. Milestones

### Milestone 1: "Playable Prototype" (1-2 Wochen)
- Player läuft in kleiner Map
- 1 Truhe funktioniert mit Durchwühl-UI
- Komponenten werden generiert
- Kann extrahieren
- Komponenten bleiben nach Extraction

### Milestone 2: "Core Loop Complete" (3-4 Wochen)
- Inventar funktioniert mit Save-Slot
- 1 Item craftbar (z.B. Bogen)
- Gecraftetes Item bleibt permanent
- 1 Gegner-Typ
- Tod + Permadeath für Komponenten

### Milestone 3: "Arsenal Growing" (5-6 Wochen)
- 3-4 craftbare Items
- Nächster Run startet mit allen gecrafteten Items
- Upgrade-System funktioniert
- Progression ist sichtbar/fühlbar

### Milestone 4: "Vertical Slice" (7-9 Wochen)
- Mehrere Gegner-Typen
- 2-3 Zonen
- Schwierigkeitsgrade
- Balancing

### Milestone 5: "MVP" (10-12 Wochen)
- Alle Core-Mechanics implementiert
- EP-System mit Verwendung
- Boss oder End-Game-Challenge
- Basic Polish

---

## 8. Referenzen & Inspiration

### Spiele zum Analysieren:
- **Extraction Shooter:** Escape from Tarkov, Arc Raiders, Hunt: Showdown
- **2D Top-Down Combat:** Enter the Gungeon, Hotline Miami, Nuclear Throne
- **Permanent Progression:** Dead Cells (Unlocks), Hades (Mirror Upgrades)
- **Crafting/Building:** Minecraft (Arsenal-Building), Terraria (Progression)
- **Looting Feel:** Diablo, Path of Exile (für Rarity-Systeme)

### Key Learnings zu übernehmen:
- Enter the Gungeon: Wie fühlt sich Waffen-Switching in Top-Down an?
- Dead Cells: Wie macht man permanente Progression befriedigend?
- Risk of Rain: Wie balanciert man "Run-Risk" vs "Safe Extract"?

---

## Changelog
- **2025-10-24 v0.1:** Initial GDD erstellt
- **2025-10-24 v0.2:** Korrigiert - Entfernt: Loadout-System, Händler, Gold | Klargestellt: Permanente Items, Komponenten-basiertes Crafting
