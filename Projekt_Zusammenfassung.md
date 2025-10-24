# Projekt-Zusammenfassung: Extraction Shooter Light

**Datum:** 24. Oktober 2025  
**Version:** 0.2 (Korrigiert)
**Status:** Konzept-Phase / Bereit für Prototyping  
**Zweck:** Kontext für zukünftige Chat-Sessions

---

## 🎮 Was ist das Projekt?

Ein **2D Top-Down Extraction Shooter** mit starkem Fokus auf **permanenter Crafting-Progression**.

### Kern-Konzept:
- Spieler startet "nackt" mit nur einem Messer
- Geht in gefährliche Zonen und sammelt Komponenten aus Truhen
- Muss zu Extraction Point, sonst verliert er alle Komponenten
- Craftet aus Komponenten Waffen, Rüstung, Upgrades
- **Gecraftete Items bleiben PERMANENT** - Arsenal wächst kontinuierlich
- Wird sichtbar stärker und kann schwerere Zonen angehen

### Genre-Mix:
- Extraction Shooter (wie Tarkov, Arc Raiders) - aber 2D und "light"
- Roguelike Elements (Permadeath für Komponenten, Runs)
- Permanent Progression (wie Dead Cells Unlocks, Hades Mirror)

---

## 🎯 Das Besondere am Spiel

### Was den Spieler fesselt:
1. **Permanente Progression:** Gecraftete Items bleiben für immer - dein Arsenal wächst
2. **Risk/Reward:** "Gehe ich noch tiefer oder extrahiere ich jetzt?"
3. **Crafting-Projekte:** "Endlich habe ich die Komponente für den AK-Schalldämpfer!"
4. **Fühlbare Power:** Von "One-Hit-Tod mit Messer" zu "One-Shot-Kills mit Upgrades"
5. **Gezieltes Farmen:** Verschiedene Zonen für verschiedene Komponenten

### Kernmechanik (was Spaß macht):
- **Truhen durchwühlen:** Items werden einzeln aufgedeckt (0.8s pro Item)
- **EP-System:** Selbst beim Durchsuchen gibt's EP
- **Save-Slot:** 1 Komponenten-Slot überlebt den Tod (erweiterbar)
- **Kein Loadout-Geraffel:** Du hast was du gebaut hast, fertig

---

## 🔄 Der Spiel-Loop (KORRIGIERT)

### Run starten:
- **KEIN Pre-Run Loadout!**
- Du spawnst automatisch mit ALLEN gecrafteten Items
- Start: Nur Messer
- Nach 3 Runs: Messer + Bogen + Pistole (alles was du gebaut hast)

### Run:
1. Spawne in gewählter Zone
2. Durchsuche Truhen → Komponenten sammeln (begrenztes Inventar)
3. Weiche Gegnern aus / bekämpfe sie
4. Entscheidung: Mehr sammeln = mehr Risiko
5. Erreiche Extraction Point

### Post-Run (bei Erfolg):
- Alle Komponenten bleiben permanent
- Craften: Neue Items bauen ODER bestehende upgraden
- Gecraftete Items gehen in permanenten Besitz
- Nächster Run: Startest mit erweiterten Arsenal

### Post-Run (bei Tod):
- **Alle Komponenten** aus diesem Run verloren (außer Save-Slot)
- **Gecraftete Items** bleiben erhalten (die sind ja permanent)
- EP bleibt erhalten

---

## 🛠️ Tech Stack & Tools

- **Engine:** Godot 4.5
- **Perspektive:** 2D Top-Down
- **Sprache:** GDScript
- **Dokumentation:** https://docs.godotengine.org/en/stable/

---

## 🎨 Wichtige Design-Entscheidungen

### Was PERMANENT bleibt (für immer):
- **Gecraftete Waffen** (Messer, Bogen, Pistolen, Gewehre, etc.)
- **Gecraftete Rüstung**
- **Gecraftete Gadgets** (Granaten, etc.)
- **Upgrades** an diesen Items
- **EP** (auch bei Tod)

### Was VERLOREN geht beim Tod:
- Alle im Run gesammelten Komponenten (außer Save-Slot)
- Das wars - sonst nichts!

### Was es NICHT mehr gibt:
- ❌ Händler-System (nicht mehr Teil des Konzepts)
- ❌ Gold/Währung (Komponenten sind die einzige "Währung")
- ❌ Items verkaufen
- ❌ Loadout-Wahl vor Run (du hast automatisch alles)

### Progression-Systeme:
- **Crafting:** Items bauen + upgraden (DAS Kern-Feature)
- **EP:** Verwendung noch offen (Skill-Tree? Unlocks? TBD)
- **Zonen:** Höhere Schwierigkeiten = bessere Komponenten

---

## ⚠️ Identifizierte Risiken

### Haupt-Risiko:
**"Fühlt sich 2D Top-Down mit Gegnern interessant genug an?"**

- In 3D Extraction Shootern: Vertikalität, Welt-Design, Immersion
- In 2D: Könnte flach/langweilig wirken
- Gegner-AI muss spannend sein ohne 3D-Komplexität

### Risiko-Mitigation:
- **Risk-Test-Prototyp:** Kleine Map + 3 AI-Varianten testen (ERSTE Aufgabe!)
- **Referenz-Spiele:** Enter the Gungeon, Hotline Miami analysieren
- **Fail-Safe:** Wenn 2D nicht funktioniert, Pivot zu anderem Genre

---

## 📋 Entwicklungs-Prioritäten

### Phase 1: RISK TEST (JETZT - WICHTIG!)
**Ziel:** Validieren dass 2D Top-Down funktioniert

Tasks:
1. Kleine Test-Map (20x20)
2. Player Movement (CharacterBody2D)
3. 3 Gegner-AI-Varianten testen:
   - A: Patrol + Line of Sight
   - B: Aggressive Verfolgung
   - C: Gebiet-Verteidiger
4. Jeweils 10 Minuten spielen
5. Entscheidung: Go oder Pivot?

**Zeitrahmen:** 1 Woche, ~10 Stunden

**WICHTIG:** Das ist der ERSTE Schritt. Ohne erfolgreichen Risk-Test kein weiteres Development!

### Phase 2: Core Loop (nach Risk-Test)
1. Truhen + Durchwühl-UI (mit EP-System)
2. Item-Generation + Rarity
3. Inventory-System mit Save-Slot
4. **Crafting (WICHTIGSTER Teil!):**
   - Komponenten → Item craften
   - Item geht in permanenten Besitz
   - Nächster Run: Item ist automatisch dabei
5. Extraction-Mechanik

### Phase 3: MVP
- Mehrere craftbare Items (5+)
- Upgrade-System für Items
- Mehrere Zonen mit Schwierigkeitsgraden
- Finalisierte Gegner-AI
- Balancing

---

## 🎨 Beispiel-Items & Crafting

### Waffen-Progression:
1. **Start:** Nur Messer (werfbar, muss eingesammelt werden)
2. **Nach ersten Runs:** Bogen craften → Hast jetzt Messer + Bogen
3. **Weiter:** Pistole craften → Messer + Bogen + Pistole
4. **Später:** AK, Shotgun, Granaten, etc.

### Upgrade-Beispiele:
- **Messer:** Kleiner Griff → fliegt schneller/weiter beim Werfen
- **Granate:** Splitter-Upgrade → mehr Schaden-Radius, mehr Fragmente
- **AK:** Schalldämpfer (braucht seltene Komponenten) → kein Lärm
- **Bogen:** Schnelle Spannmechanik → höhere Feuerrate

### Rarity-System:
- Common (weiß) - Basic Komponenten
- Uncommon (grün) - Bessere Komponenten
- Rare (blau) - Upgrade-Material
- Epic (lila) - Seltene Upgrades
- Legendary (orange/gold) - Beste Upgrades, sehr selten

### Zonen-Beispiele:
- **Zone 1:** Verlassene Vorstadt → Basic Materials (Holz, Schrott)
- **Zone 2:** Industriegebiet → Metall-Komponenten
- **Zone 3:** Militärbasis → Waffen-Komponenten (Magazine, Läufe)
- **Zone 4:** Forschungslabor → Experimentelle Tech (Schalldämpfer, Laser-Sights)
- **Zone 5:** ??? → End-Game Komponenten

---

## 💭 Offene Design-Fragen

### Noch zu klären:
- **EP-Verwendung:** Skill-Tree? Permanente Stats? Zone-Unlocks? Crafting-Speed?
- **Gegner-AI:** Welche Variante aus Risk-Test?
- **Art Style:** Pixel Art? Low-Poly? Vector?
- **Combat Feel:** Wie fühlt sich Waffen-Switching an?
- **Ammo-System:** Unbegrenzt oder limitiert?

### Später:
- Noise-System (Lärm zieht Gegner an)?
- Time-Limit pro Run?
- Boss-Fights als End-Game?
- Durability (Waffen nutzen sich ab)? → vermutlich NEIN

---

## 📚 Referenz-Spiele (zum Analysieren)

### Extraction Shooter:
- Escape from Tarkov (Risk/Reward, Tension)
- Arc Raiders (Vision, noch nicht released)
- Hunt: Showdown (Extraction-Gefühl)

### 2D Top-Down Combat:
- **Enter the Gungeon** ← WICHTIG für Combat-Feel & Waffen-Switching
- **Hotline Miami** ← Für schnellen, taktischen Top-Down-Combat
- **Nuclear Throne** ← Für Gegner-Design & Chaos-Management

### Permanent Progression:
- **Dead Cells** ← Unlocks + Meta-Progression
- **Hades** ← Mirror Upgrades, fühlbare Progression
- Risk of Rain (Meta + Runs)

### Crafting/Building:
- Terraria (Arsenal-Building, Progression-Gefühl)
- Minecraft (Crafting-Loops)

---

## 🚀 Nächste Schritte (konkret)

### ALLERERSTE Aufgabe (HEUTE/MORGEN):
1. **Godot öffnen**, neues 2D-Projekt "ExtractionShooterLight"
2. **CharacterBody2D** Node erstellen, umbenennen zu "Player"
3. **Movement-Script:** 
   ```gdscript
   var speed = 200.0
   func _physics_process(delta):
       var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
       velocity = input * speed
       move_and_slide()
   ```
4. **Test-Map:** Node2D als Parent, paar ColorRect als Wände
5. **Spielen:** Kannst du dich bewegen? ✅

### Diese Woche (Risk-Test):
- Risk-Test durchführen (siehe RiskTestPlan.md)
- 3 Gegner-AI-Varianten testen
- Go/No-Go Entscheidung treffen
- Dokumentieren was funktioniert

---

## 🗂️ Wichtige Dokumente

1. **GDD_ExtractionShooterLight.md** - Vollständiges Game Design Document
2. **RiskTestPlan.md** - Detaillierter Plan für Risk-Validierung
3. **KanbanBoard.md** - Alle Tasks nach Priorität
4. **Diese Datei** - Schneller Kontext für neue Chat-Sessions

**Alle Dokumente Version 0.2** - Korrigiert ohne Händler/Loadout-System!

---

## 💬 Kommunikations-Stil (für zukünftige Chats)

### Präferenzen:
- **Keine direkten Code-Snippets** (außer explizit gefragt)
- **Denkanstöße statt Lösungen**
- **"Sensei-Stil"** - durch Fragen zum Verstehen führen
- **Praktisch orientiert** - keine theoretischen Abschweifungen

### Expertise:
- Programmierer (kein Anfänger)
- TypeScript/JavaScript, Lua mit Love2d, Pico8
- UiPath RPA (beruflich)
- Arduino/Elektronik (Anfänger)
- **Neu in Godot**, aber erfahren mit Game Dev Konzepten

### Persönlich:
- 33 Jahre, männlich
- 2 Kinder + Frau (Zeit ist limitiert!)
- Hobby-Dev nach Feierabend
- **Effizienz ist wichtig**

---

## 🎯 Motivationen & Vision

### Warum dieses Projekt?
- Liebe für Extraction Shooter (Arc Raiders Hype)
- **"Ich habe Teile, ich baue mir was Cooles"** ← Das ist der Hook!
- Progression die SICHTBAR und FÜHLBAR ist
- Arsenal das kontinuierlich wächst
- Langzeit-Projekt (kein Gamejam Rush)

### End-Vision:
- Spieler arbeitet auf Crafting-Projekte hin
- Freut sich wenn seltene Komponente droppt
- Arsenal wächst von 1 Messer zu 10+ Items
- Wird merklich stärker mit jedem Upgrade
- Boss-Challenges als End-Game

### Was NICHT:
- Kein PvP (vorerst)
- Keine Story (optional später)
- Kein Survival (Hunger/Durst etc.)
- **Kein Händler/Economy mehr** (Konzept geändert!)

---

## 📝 Projekt-Status: READY TO START

**Aktueller Stand:**
- ✅ Konzept definiert (v0.2 - korrigiert)
- ✅ GDD geschrieben
- ✅ Risk identifiziert + Test-Plan erstellt
- ✅ Kanban Board aufgesetzt
- ⏳ **NÄCHSTER SCHRITT:** Risk-Test Prototyp bauen (RISK-001)

**Bereit für:** Hands-on Development

**WICHTIG:** Starte mit Risk-Test, nicht mit Crafting!

---

## 🔗 Quick Links (für Claude)

Wenn in zukünftigen Chats Fragen aufkommen:

- **"Was war nochmal das Spiel?"** → Siehe "Was ist das Projekt?"
- **"Wie funktioniert X?"** → Siehe GDD_ExtractionShooterLight.md
- **"Was soll ich als nächstes machen?"** → Siehe KanbanBoard.md (RISK-001!)
- **"Wie teste ich das Risiko?"** → Siehe RiskTestPlan.md
- **"Godot-Doku"** → https://docs.godotengine.org/en/stable/

---

## 🎓 Wichtige Erinnerungen für zukünftige Sessions

1. **User will Denkanstöße, nicht Lösungen** (außer explizit Code gefragt)
2. **Godot 4.5 Doku nutzen** wenn GDScript-Fragen auftauchen
3. **Risk-First Approach:** Erst validieren, dann bauen
4. **MVP über Perfection:** Lieber spielbar als perfekt
5. **User hat limitierte Zeit** (Familie, Job) - Effizienz wichtig
6. **Permanente Items sind das Kern-Feature** - nicht Händler!
7. **Kein Loadout-System** - Player spawnt mit allem was er hat

---

## ⚠️ WICHTIGE KONZEPT-ÄNDERUNGEN (v0.1 → v0.2)

### Was sich geändert hat:
- ❌ **ENTFERNT:** Händler/Gold-System komplett
- ❌ **ENTFERNT:** Loadout-Wahl vor Run
- ❌ **ENTFERNT:** Items verkaufen
- ✅ **NEU:** Permanente Items (gecraftet = für immer)
- ✅ **NEU:** Run startet automatisch mit allem
- ✅ **KLARGESTELLT:** Komponenten sind einzige "Währung"

### Warum diese Änderung?
Das neue Konzept ist **cleaner** und fokussiert auf das, was wirklich Spaß macht:
- "Ich baue mir was Cooles" statt "Ich verkaufe Zeug"
- Progression ist direkter sichtbar
- Weniger Systeme = einfacher zu entwickeln
- Mehr Fokus auf Crafting als Kern

---

## 🚦 Status-Check für neue Chats

**Wenn User fragt "Wo stehen wir?":**
- **Phase:** Konzept abgeschlossen, Risk-Test steht an
- **Nächster Task:** RISK-001 (Test-Map erstellen)
- **Zeitplan:** 1 Woche für Risk-Test
- **Blocker:** Keine
- **Motivation:** Hoch, Konzept ist klar

**Wenn User fragt "Was ist anders als vorher?":**
→ Zeige auf diese Sektion: "WICHTIGE KONZEPT-ÄNDERUNGEN"

---

**Ende der Zusammenfassung**

_Diese Datei (v0.2) dient als Schnell-Referenz für neue Chat-Sessions. Alle Details siehe die anderen Dokumente. Alle Dokumente wurden korrigiert um das richtige Konzept zu reflektieren!_
