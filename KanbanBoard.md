# Kanban Board: Extraction Shooter Light

**Projekt:** Extraction Shooter Light  
**Version:** 0.2 (Korrigiert)
**Start:** 24. Oktober 2025  
**Board Type:** Feature-basiert + Risk-First

---

## 🔴 CRITICAL PATH (Risk Test)

Diese Tasks MÜSSEN zuerst erledigt werden um das Kern-Risiko zu validieren.

### 📋 To Do
- [ ] **RISK-001:** Test-Map erstellen (20x20, 3-5 Räume)
- [ ] **RISK-002:** Player CharacterBody2D mit WASD Movement
- [ ] **RISK-003:** Truhen-Platzhalter in Map setzen (nur visuelle Marker)
- [ ] **RISK-004:** Extraction Point Platzhalter
- [ ] **RISK-005:** AI Variante A implementieren (Patrol + Line of Sight)
- [ ] **RISK-006:** AI Variante B implementieren (Aggressive Verfolgung)
- [ ] **RISK-007:** AI Variante C implementieren (Gebiet-Verteidiger)
- [ ] **RISK-008:** 10 Min mit jeder AI-Variante spielen + Notizen
- [ ] **RISK-009:** Referenz-Videos anschauen (Enter the Gungeon, Hotline Miami)
- [ ] **RISK-010:** Risk-Test dokumentieren + Go/No-Go Entscheidung

### 🔄 In Progress
_Ziehe Tasks hier rein wenn du daran arbeitest_

### ✅ Done
_Completed Risk Test Items_

---

## 🟢 MVP - CORE LOOP

Nach erfolgreichem Risk-Test: Baue den minimalen spielbaren Loop.

### 📋 Backlog

#### Player System
- [ ] **PLAYER-001:** Player Health System
- [ ] **PLAYER-002:** Player Death + Respawn Mechanik
- [ ] **PLAYER-003:** Player Animation (Idle, Walk, optional)
- [ ] **PLAYER-004:** Player Interaction System (F-Key für Truhen)
- [ ] **PLAYER-005:** Player startet mit allen gecrafteten Items

#### Loot System
- [ ] **LOOT-001:** Truhen-Objekt als Scene erstellen
- [ ] **LOOT-002:** Durchwühl-UI Design (Mockup/Sketch)
- [ ] **LOOT-003:** Durchwühl-UI Implementation (öffnen/schließen)
- [ ] **LOOT-004:** Item-Animation beim Aufdecken (0.8s pro Item)
- [ ] **LOOT-005:** Komponenten-Daten-Struktur (Name, Rarity, Type, etc.)
- [ ] **LOOT-006:** Komponenten-Generator (Random mit Rarity)
- [ ] **LOOT-007:** Rarity-System (Common → Legendary)
- [ ] **LOOT-008:** Visual Feedback für Rarity (Farben, Glow)
- [ ] **LOOT-009:** EP-Gain beim Durchwühlen
- [ ] **LOOT-010:** EP-Counter UI

#### Inventory System
- [ ] **INV-001:** Inventory-Datenstruktur für Komponenten
- [ ] **INV-002:** Inventory-UI Design
- [ ] **INV-003:** Inventory-UI Implementation
- [ ] **INV-004:** Drag & Drop zwischen Truhe ↔ Inventory
- [ ] **INV-005:** Slot-Limit Implementation
- [ ] **INV-006:** Save-Slot Mechanik (1 Slot überlebt Tod)
- [ ] **INV-007:** Komponenten-Stacking (gleiche stapeln?)

#### Crafting System (KERN!)
- [ ] **CRAFT-001:** Permanenter Besitz-System (gecraftete Items speichern)
- [ ] **CRAFT-002:** Crafting-Rezepte definieren (JSON/Resource)
- [ ] **CRAFT-003:** Crafting-UI Design
- [ ] **CRAFT-004:** Crafting-UI Implementation
- [ ] **CRAFT-005:** Rezept-Prüfung (habe ich alle Komponenten?)
- [ ] **CRAFT-006:** Item craften → geht in permanenten Besitz
- [ ] **CRAFT-007:** Upgrade-System für gecraftete Items
- [ ] **CRAFT-008:** Visual: Gecraftete Items in "Arsenal"-Übersicht
- [ ] **CRAFT-009:** Run startet mit allen gecrafteten Items

#### Combat System
- [ ] **COMBAT-001:** Melee-System (Messer) - Basis
- [ ] **COMBAT-002:** Melee-Werfen + Aufsammeln
- [ ] **COMBAT-003:** Projektil-System (für Bogen, Gewehre)
- [ ] **COMBAT-004:** Hit-Detection (Treffer registrieren)
- [ ] **COMBAT-005:** Damage-System (Gegner nehmen Schaden)
- [ ] **COMBAT-006:** Waffen-Wechsel System (zwischen allen besessenen Waffen)
- [ ] **COMBAT-007:** Multiple Waffen gleichzeitig nutzen können
- [ ] **COMBAT-008:** Ammo-System (optional, TBD)

#### Enemy System
- [ ] **ENEMY-001:** Gegner CharacterBody2D erstellen
- [ ] **ENEMY-002:** Finalisiere AI-Variante (aus Risk-Test)
- [ ] **ENEMY-003:** Gegner Health System
- [ ] **ENEMY-004:** Gegner Death (kein Loot Drop - nur Komponenten sind in Truhen)
- [ ] **ENEMY-005:** Gegner Animation (optional)
- [ ] **ENEMY-006:** Mehrere Gegner-Typen (mindestens 2)

#### Extraction & Win/Loss
- [ ] **EXTRACT-001:** Extraction Point Visual (Portal/Ausgang)
- [ ] **EXTRACT-002:** Extraction-Trigger (Spieler kommt an, Run endet)
- [ ] **EXTRACT-003:** Win-Screen + Komponenten-Übersicht
- [ ] **EXTRACT-004:** Komponenten werden permanent gespeichert
- [ ] **EXTRACT-005:** Loss-Screen (bei Tod)
- [ ] **EXTRACT-006:** Permadeath für Komponenten (außer Save-Slot)
- [ ] **EXTRACT-007:** Gecraftete Items bleiben bei Tod erhalten

#### Map & World
- [ ] **MAP-001:** Tilemap/Tileset erstellen (Boden, Wände)
- [ ] **MAP-002:** Zone 1 erstellen (Größe ~50x50)
- [ ] **MAP-003:** Obstacles & Props platzieren
- [ ] **MAP-004:** Spawn-Point System
- [ ] **MAP-005:** Random Extraction-Point Platzierung (feste Distanz)

#### Run-Start System
- [ ] **RUNSTART-001:** Run-Start Screen (Zone + Schwierigkeit wählen)
- [ ] **RUNSTART-002:** "Arsenal"-Anzeige (alle gecrafteten Items preview)
- [ ] **RUNSTART-003:** "Start Run" Button → lädt Map mit Equipment
- [ ] **RUNSTART-004:** Player spawnt mit allen Items

#### Post-Run System
- [ ] **POSTRUN-001:** Komponenten speichern bei Erfolg
- [ ] **POSTRUN-002:** Stats-Anzeige (Kills, Zeit, gefundene Komponenten)
- [ ] **POSTRUN-003:** EP speichern (auch bei Tod)
- [ ] **POSTRUN-004:** Direkt zu Crafting-Screen Option

### 🔄 To Do
_Ziehe MVP-Tasks hier rein basierend auf Priorität_

### 🏃 In Progress
_Current Work_

### ✅ Done
_Completed MVP Items_

---

## 🔵 POLISH & EXTENDED FEATURES

Features die NACH dem MVP kommen.

### 📋 Backlog

#### Zonen-System (erweitert)
- [ ] **ZONE-001:** Zone 2 erstellen (Industriegebiet)
- [ ] **ZONE-002:** Zone 3 erstellen (Militärbasis)
- [ ] **ZONE-003:** Zone 4 erstellen (Labor)
- [ ] **ZONE-004:** Zone-spezifische Gegner-Typen
- [ ] **ZONE-005:** Zone-spezifische Komponenten-Loot-Tables
- [ ] **ZONE-006:** Schwierigkeitsgrade pro Zone (1-5)

#### Meta-Progression
- [ ] **META-001:** EP-Verwendung definieren (Skill-Tree? Unlocks?)
- [ ] **META-002:** Permanente Upgrades System (außerhalb von Items)
- [ ] **META-003:** Unlock-System für Zonen
- [ ] **META-004:** Progression-Tracking (Stats über alle Runs)
- [ ] **META-005:** Achievement-System (optional)

#### End-Game
- [ ] **BOSS-001:** Boss-Gegner Design
- [ ] **BOSS-002:** Boss-AI Implementation
- [ ] **BOSS-003:** Boss-Arena/Zone
- [ ] **BOSS-004:** Boss-Rewards (Unique/Legendary Komponenten)
- [ ] **BOSS-005:** Multiple Boss-Varianten

#### Advanced Crafting
- [ ] **ADVCRAFT-001:** Upgrade-Trees (mehrere Upgrade-Pfade pro Item)
- [ ] **ADVCRAFT-002:** Item-Modding (mehrere Mods pro Waffe)
- [ ] **ADVCRAFT-003:** Komponenten-Kombination (2 Komponenten → 1 bessere)
- [ ] **ADVCRAFT-004:** Crafting-Projekte mit Fortschritts-Tracking

#### Save-Slot System (erweitert)
- [ ] **SAVESLOT-001:** Multiple Save-Slots (2, 3, 4...)
- [ ] **SAVESLOT-002:** Save-Slot Upgrades als craftbar
- [ ] **SAVESLOT-003:** Save-Slot Upgrade-Kosten (sehr seltene Komponenten)
- [ ] **SAVESLOT-004:** Visual: Save-Slot-Anzeige im Inventar

#### Audio
- [ ] **AUDIO-001:** Footstep Sounds
- [ ] **AUDIO-002:** Weapon Sounds (Schuss, Reload, Wurf)
- [ ] **AUDIO-003:** Enemy Sounds (Aggro, Patrol, Death)
- [ ] **AUDIO-004:** Ambient Sound per Zone
- [ ] **AUDIO-005:** Music Tracks (Menu, Run, Combat)
- [ ] **AUDIO-006:** UI Sounds (Craft, Loot, Durchwühlen)

#### Visual Polish
- [ ] **VFX-001:** Muzzle Flash (Schusseffekte)
- [ ] **VFX-002:** Hit Effects (Impact, Blood)
- [ ] **VFX-003:** Death Animations (Player & Enemies)
- [ ] **VFX-004:** UI-Transitions & Animations
- [ ] **VFX-005:** Rarity Glow/Particles auf Items
- [ ] **VFX-006:** Extraction Point Visual (Particles, Glow)
- [ ] **VFX-007:** Crafting Success Animation

#### UX/UI Polish
- [ ] **UX-001:** Minimap
- [ ] **UX-002:** Tooltips für Komponenten & Items
- [ ] **UX-003:** Tutorial/Onboarding
- [ ] **UX-004:** Settings-Menu
- [ ] **UX-005:** Keybinding-Options
- [ ] **UX-006:** Arsenal-Screen (alle gecrafteten Items overview)
- [ ] **UX-007:** Crafting-Queue (mehrere Projekte parallel verfolgen)

#### Balancing & Testing
- [ ] **BAL-001:** Gegner-Damage Balancing
- [ ] **BAL-002:** Komponenten-Drop-Rates Tuning
- [ ] **BAL-003:** Crafting-Kosten Balancing
- [ ] **BAL-004:** Zone-Schwierigkeit Balancing
- [ ] **BAL-005:** EP-Gain Rate Tuning
- [ ] **TEST-001:** Playtesting mit Freunden
- [ ] **TEST-002:** Bug-Fixing Pass
- [ ] **TEST-003:** Performance-Optimierung

### 🔄 To Do
_Extended Features - nach MVP_

### 🏃 In Progress

### ✅ Done

---

## 📊 WORKFLOW RULES

### Prioritäts-Reihenfolge:
1. **CRITICAL PATH (Risk Test)** → Muss zuerst fertig sein
2. **Core Loop** → Truhe → Inventory → Crafting (WICHTIGSTER Teil!)
3. **MVP Features** → Alles was den Loop komplett macht
4. **Polish** → Erst wenn MVP spielbar ist

### Story Points (optional):
- **XS:** < 1 Stunde
- **S:** 1-2 Stunden
- **M:** 3-5 Stunden
- **L:** 6-10 Stunden
- **XL:** 10+ Stunden

### Labels (optional):
- `bug` - Fehler der behoben werden muss
- `feature` - Neue Funktionalität
- `polish` - Verbesserung von Bestehendem
- `blocked` - Wartet auf andere Task
- `research` - Recherche/Testing nötig
- `core` - Kritisch für MVP

---

## 🎯 MILESTONES

### Milestone 1: Risk Test Passed ✅
**Deadline:** 1 Woche
- Alle RISK-xxx Tasks done
- Go-Decision getroffen
- Gegner-AI-Variante gewählt

### Milestone 2: Playable Prototype
**Deadline:** 2-3 Wochen nach Risk Test
- Player Movement ✅
- 1 Truhe mit Durchwühl-UI ✅
- Komponenten werden generiert ✅
- Kann extrahieren ✅
- Komponenten bleiben nach Extraction

### Milestone 3: Crafting Works
**Deadline:** 4-5 Wochen
- Inventar funktioniert mit Save-Slot ✅
- 1 Item craftbar (z.B. Bogen) ✅
- Gecraftetes Item bleibt permanent ✅
- Nächster Run startet mit Item ✅
- Progression ist FÜHLBAR

### Milestone 4: Core Loop Complete
**Deadline:** 6-8 Wochen
- 3+ craftbare Items
- Upgrade-System funktioniert
- 1 Gegner-Typ mit finaler AI
- Combat fühlt sich gut an
- Tod + Permadeath für Komponenten

### Milestone 5: MVP
**Deadline:** 10-12 Wochen
- Alle MVP-Backlog-Items Done
- 2-3 Zonen mit Schwierigkeitsgraden
- Mehrere Gegner-Typen
- EP-System implementiert
- Spiel ist "feature complete"

### Milestone 6: v1.0
**Deadline:** 14-16 Wochen
- Polish & Extended Features
- Balancing done
- Boss-Fight(s)
- Releasable / Shareable

---

## 📝 NOTES

**Wichtige Änderungen zu v0.1:**
- ❌ **ENTFERNT:** Händler/Gold-System
- ❌ **ENTFERNT:** Loadout-Wahl vor Run
- ✅ **NEU:** Permanente Items (gecraftet = für immer)
- ✅ **NEU:** Run startet automatisch mit allem was du hast
- ✅ **KLARGESTELLT:** Komponenten sind die einzige "Währung"

**Zum Importieren in Tools:**

### GitHub Projects:
1. Erstelle neues Project (Board View)
2. Columns: Backlog, To Do, In Progress, Done
3. Copy-Paste Tasks als Issues
4. Labels: Critical, MVP, Polish

### Jira:
1. Erstelle Epics: "Risk Test", "MVP Core Loop", "Polish"
2. Tasks als Stories/Tasks unter Epic
3. Nutze Sprint-Planning für Wochen-Ziele

### Trello (wenn kein Zugriff auf andere):
1. Erstelle Board
2. Lists: Backlog, To Do, Doing, Done
3. Cards = Tasks
4. Labels für Priorität

---

## 🚀 QUICK START

**Du willst JETZT anfangen?**

1. Öffne Godot
2. Erstelle neues 2D-Projekt
3. Nimm RISK-001 in "In Progress"
4. Arbeite dich durch Risk-Test
5. Hab Spaß!

**Stuck? Nächster Task unklar?**
- Schau in RiskTestPlan.md
- Oder frag Claude im nächsten Chat

---

## CHANGELOG
- **2025-10-24 v0.1:** Initial Kanban Board erstellt
- **2025-10-24 v0.2:** Korrigiert - Händler/Loadout entfernt, Permanente Items geklärt, Crafting als Kern betont
