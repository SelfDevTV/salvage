# Risk Test Plan: "Fühlt sich 2D Top-Down interessant an?"

**Ziel:** Validieren, dass die 2D Top-Down Welt + Gegner-Interaktion interessant genug ist, bevor wir tiefer ins Projekt investieren.

---

## Das Risiko

**Hypothese:** "Eine 2D Top-Down Welt mit Gegnern könnte sich langweilig oder generisch anfühlen."

**Erfolgs-Kriterium:** "Ich laufe 2 Minuten durch die Welt und es fühlt sich interessant an + Gegner reagieren in passender Art und Weise."

---

## Test-Prototyp Spec

### Minimales Setup
- **Map-Größe:** Klein (ca. 20x20 Tiles oder Godot-Einheiten)
- **Map-Inhalt:**
  - 3-5 Räume/Bereiche
  - Wände/Obstacles (Sichtlinie brechen)
  - 2-3 Truhen (nur als Platzhalter-Sprites)
  - 1 Extraction Point (als visueller Marker)
  
- **Player:**
  - CharacterBody2D mit Movement
  - Vorerst nur Movement, kein Combat
  - Nur laufen + an Truhen vorbeigehen (ohne Interaktion vorerst)
  
- **Gegner:**
  - 3-5 Gegner-Instanzen
  - 3 verschiedene Verhaltensweisen zum Testen (siehe unten)

### Zeitrahmen
- **Ziel:** 4-6 Stunden Entwicklungszeit
- **Deadline:** 1 Woche ab jetzt

---

## Gegner-Verhaltensweisen zum Testen

Du testest **3 verschiedene AI-Varianten** in separaten Test-Sessions:

### Variante A: Patrol + Line of Sight
```
- Gegner patrouilliert zwischen 2-3 Punkten
- Bei Sichtkontakt: Verfolgt Spieler
- Verliert Spieler nach X Sekunden ohne Sicht
- Kehrt zu Patrol zurück
```

**Vorteile:** Klassisch, vorhersehbar, erlaubt taktisches Vorgehen  
**Nachteile:** Könnte langweilig werden wenn zu simpel  
**Passt zu:** Stealth-orientierten Gameplay

---

### Variante B: Aggressive Verfolgung + Sound
```
- Gegner hört Spieler in Radius (z.B. 10 Units)
- Verfolgt aggressiv
- Bricht Verfolgung NIE ab (oder nur nach sehr langer Zeit/Distanz)
- Spieler muss aktiv entkommen/ausweichen
```

**Vorteile:** Hohes Tempo, ständige Spannung, Action-fokussiert  
**Nachteile:** Könnte zu stressig/unfair sein  
**Passt zu:** Fast-paced Extraction Runs

---

### Variante C: Gebiet-Verteidiger + Alarm
```
- Gegner bleiben in ihrem Gebiet (z.B. Raum/Zone)
- Wenn Spieler eindringt: Alert-State
- Alarmiert andere Gegner in Nähe
- Kehrt zu Idle zurück wenn Spieler Gebiet verlässt
```

**Vorteile:** Räumliche Taktik, Risiko-Management per Raum  
**Nachteile:** Könnte zu statisch sein  
**Passt zu:** Methodisches, geplantes Looten

---

## Test-Methodik

### Phase 1: Build Basis (2-3 Stunden)
1. Map erstellen mit Tilemaps oder Polygonen
2. Player Movement finalisieren (CharacterBody2D + move_and_slide)
3. Truhen als Sprites platzieren (keine Funktionalität)
4. Extraction Point als Marker setzen
5. Kamera-System (folgt Spieler)

### Phase 2: Gegner-Tests (1-1.5 Stunden pro Variante)
Für jede AI-Variante:
1. **Implementieren** (quick & dirty, kein perfekter Code)
2. **3-5 Gegner** in Map platzieren
3. **10 Minuten aktiv spielen**
4. **Notizen machen** (siehe Evaluations-Fragen unten)
5. **Kurzes Video** aufnehmen (optional, hilft beim Vergleich)

### Phase 3: Evaluation (30-60 Minuten)
- Vergleiche alle 3 Varianten
- Entscheide welche am besten passt (oder Mix?)
- Dokumentiere Learnings
- Go/No-Go Entscheidung

---

## Evaluations-Fragen

Für jede Variante, beantworte ehrlich:

### 1. Bewegungs-Gefühl
- [ ] Fühlt sich die Bewegung durch die Welt flüssig an?
- [ ] Gibt es "dead zones" wo nichts passiert?
- [ ] Macht es Spaß, sich zu bewegen?

### 2. Gegner-Interaktion
- [ ] Sind Gegner eine spürbare Bedrohung?
- [ ] Kann ich sie outplayen/outsmart?
- [ ] Fühlt sich ihr Verhalten "richtig" an für dein Spiel?
- [ ] Ist es frustrierend oder fair?
- [ ] Entsteht Spannung?

### 3. Interesse-Level
- [ ] Würde ich freiwillig nochmal durch diese Map laufen?
- [ ] Langweile ich mich nach 2 Minuten?
- [ ] Welche Momente waren spannend? Welche langweilig?
- [ ] Ist die Welt interessant genug ohne Combat?

### 4. Vision-Fit
- [ ] Passt das zu meinem "Extraction Shooter Light"-Gefühl?
- [ ] Kann ich mir vorstellen, das 10+ Stunden zu spielen?
- [ ] Würde das mit Truhen-Looten + Crafting funktionieren?

### 5. Technische Erkenntnisse
- [ ] War die AI einfach zu implementieren?
- [ ] Performance-Probleme mit mehreren Gegnern?
- [ ] Welche Godot-Features waren hilfreich?

---

## Erfolgs-Kriterien

### ✅ Test BESTANDEN wenn:
- **Mindestens 1 AI-Variante** fühlt sich interessant und spannend an
- Du hast **konkrete Ideen**, wie man es noch besser machen könnte
- Du bist **motiviert**, mit dem Projekt weiterzumachen
- Das Core-Gefühl stimmt: **"Ja, das könnte funktionieren!"**
- Du siehst bereits im Kopf, wie Truhen-Looten hier reinpasst

### ❌ Test GESCHEITERT wenn:
- **Alle 3 Varianten** fühlen sich tot/langweilig/frustrierend an
- Du denkst **"Das wird nie funktionieren in 2D"**
- Keine Ideen mehr, wie man es verbessern könnte
- Das Projekt fühlt sich nicht mehr spannend an

### ⚠️ PIVOT-Optionen wenn Test scheitert:
- **Option A:** Sidescroller statt Top-Down?
- **Option B:** Mehr Puzzle/Stealth, weniger Combat?
- **Option C:** Fokus auf Crafting-Idle-Game statt Extraction?
- **Option D:** Komplett anderes Genre/Projekt?

---

## Zusätzliche Test-Elemente (optional)

Wenn Zeit übrig ist oder du Lust hast, teste auch:

### Sound/Audio (30 Minuten)
- Footsteps vom Spieler
- Gegner-Geräusche (Grunzen, Schritte)
- Ambient-Sound
→ **Frage:** Macht das die Welt lebendiger? Hilft es der Immersion?

### Visual Feedback (30 Minuten)
- Sichtlinien von Gegnern anzeigen (Debug-Lines)?
- Alert-States visuell darstellen (Ausrufezeichen)?
- Minimap oder Kompass?
→ **Frage:** Hilft das der Übersicht oder ist es visual clutter?

### Obstacles & Level-Design (1 Stunde)
- Verschiedene Raum-Größen testen
- Chokepoints einbauen
- Versteck-Spots / Cover
- Mehrere Wege durch die Map
→ **Frage:** Welches Level-Design macht am meisten Spaß?

---

## Referenz-Recherche (parallel zum Prototyp)

### Videos anschauen (1-2 Stunden insgesamt)
**Enter the Gungeon:**
- Erste 10-15 Minuten Gameplay anschauen
- Notizen: Wie bewegen sich Gegner? Wie reagiert der Spieler?

**Hotline Miami:**
- Combat-Analyse (ca. 10 Minuten)
- Notizen: Was macht schnellen Top-Down-Combat interessant?

**Nuclear Throne:**
- Gegner-Verhalten beobachten (ca. 10 Minuten)
- Notizen: Wie entsteht Spannung ohne komplexe AI?

### Key Questions beim Anschauen:
- Was hält meine Aufmerksamkeit?
- Wie komplex ist die Gegner-AI wirklich?
- Welche Tricks nutzen sie für "interessante Welt"?
- Was könnte ich in 2-3 Stunden nachbauen?

---

## Deliverables nach Test

Nach Abschluss des Risk-Tests, dokumentiere:

### 1. Gewählte AI-Variante
"Ich entscheide mich für Variante X, weil..."
(oder: "Mix aus Variante A und C, weil...")

### 2. Key Learnings (3-5 Bullet Points)
Was hast du über 2D Top-Down gelernt?

### 3. Anpassungen für Main Project
Was wirst du anders machen basierend auf dem Test?

### 4. Go/No-Go Entscheidung
- **GO:** "Ja, ich mache weiter mit dem Projekt"
- **NO-GO:** "Ich pivote zu [Alternative]"

### 5. Nächste Schritte
Was ist der nächste Task im Kanban Board?

---

## Timeline

| Tag | Aufgabe | Zeit |
|-----|---------|------|
| Tag 1 | Map + Player Movement aufsetzen | 2-3h |
| Tag 2 | AI Variante A implementieren + testen | 1.5h |
| Tag 3 | AI Variante B implementieren + testen | 1.5h |
| Tag 4 | AI Variante C implementieren + testen | 1.5h |
| Tag 5 | Referenz-Videos anschauen + Notizen | 1-2h |
| Tag 6 | Evaluation + Dokumentation | 1h |
| Tag 7 | Buffer / Optional: Sound/Visual Tests | - |

**Gesamt:** ~10 Stunden über 1 Woche verteilt

---

## Notizen-Template

Nutze dieses Template während des Tests (copy-paste für jede Session):

```markdown
## Test-Session: [Datum, Uhrzeit]

### AI-Variante: [A / B / C]

**Was funktioniert gut:**
- 
- 
- 

**Was fühlt sich schlecht/langweilig an:**
- 
- 

**Überraschende Momente:**
- 

**Ideen für Verbesserungen:**
- 

**Würde ich so weitermachen? (Ja/Nein/Vielleicht):**

**Score (1-10):** __/10

**Notizen zu Godot/Technik:**
- 
```

---

## Godot-Tipps für den Risk-Test

### CharacterBody2D Movement (Quick Start):
```gdscript
# Einfachstes Movement - kannst du später erweitern
var speed = 200.0

func _physics_process(delta):
    var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    velocity = input * speed
    move_and_slide()
```

### AI-Raycast für Line of Sight:
- Nutze `RayCast2D` Node
- Target: Player-Position
- Check: `is_colliding()` und `get_collider()`

### Area2D für Sound-Radius:
- `Area2D` mit `CollisionShape2D` (CircleShape)
- Signal: `body_entered` wenn Spieler in Radius

### Patrol-Punkte:
- Array mit `Vector2` Positionen
- Nutze `move_toward()` zum smoothen Movement

---

## Nächste Schritte nach erfolgreichem Test

### Wenn Risk-Test BESTANDEN:
1. ✅ Finalisiere AI-Entscheidung
2. ➡️ Beginne mit **Core Loop**: Truhen + Durchwühl-UI (siehe Kanban Board)
3. ➡️ Implementiere Inventar-System
4. ➡️ Erste Crafting-Mechanik

### Wenn Risk-Test GESCHEITERT:
1. 🤔 "Post-Mortem" - Was ging schief?
2. 💭 Pivot-Entscheidung treffen
3. 📝 Neuen Plan aufstellen
4. 🔄 Oder: Pause machen und später mit frischem Kopf zurückkommen

---

## Motivation & Reminder

**Warum machst du diesen Test?**
Weil 1 Woche jetzt testen besser ist als 3 Monate an etwas arbeiten, das sich nicht gut anfühlt.

**Der Test ist quick & dirty:**
Perfekter Code ist NICHT das Ziel. Saubere Architektur ist NICHT das Ziel.
Das Ziel: **"Fühlt sich das gut an?"** - Ja oder Nein.

**Du hast 2 Kinder und einen Job:**
10 Stunden über eine Woche ist machbar. Nicht mehr, nicht weniger.
Sei effizient. Sei fokussiert. Hab Spaß!

---

**Viel Erfolg! 🚀**
