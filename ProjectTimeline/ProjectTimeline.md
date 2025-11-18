# Zelda Dungeon Group Project: Roles & Step-by-Step Plan
*Converted from ProjectTimeline.docx for GitHub*  
Source: ProjectTimeline.docx

---

## Team & Roles

**Jacob – Role 1: Gameplay & Systems Programmer**

**Krystal – Role 2: Level + Enemy/NPC Programmer**

**Lily – Role 3: Art, UI & Story Designer**

---

## Role Responsibilities

### Jacob – Role 1: Gameplay & Systems Programmer
**Main Focus: Make the game run.**

- Create and configure the Godot project.
- Implement player movement, collision, and health.
- Handle scene switching between:
  - Intro → Room 1 → Room 2 → Room 3
  - Success / Failure cutscenes.
- Connect enemy and NPC logic into the game.
- Make sure the final build runs from start to finish with no crashes.

---

### Krystal – Role 2: Level + Enemy/NPC Programmer
**Main focus: Make the dungeon and characters behave.**

- Design and build the 3 tile map dungeon rooms:
  - Walls, floor, doors, obstacles.
- Set up collision for the level.
- Create Enemy scenes:
  - Non-random movement (patrols or paths).
  - Damage to the player.
- Create an NPC scene:
  - Simple path or pacing movement.
  - Interaction (talking / triggering success condition).

---

### Lily – Role 3: Art, UI & Story Designer
**Main focus: Make the game look good and tell a story.**

- Provide art assets:
  - Player, NPC, enemies, tiles, objects.
- Create simple UI:
  - HP hearts/bar, dialogue box, text style.
- Write the story:
  - Intro cutscene text.
  - NPC dialogue.
  - Success ending text.
  - Failure ending text.
- Create the cutscene screens (simple text scenes).

---

# Step-by-Step Timeline  
*(Follow in order.)*

---

## PHASE 0 – Kickoff (Everyone)
**Goal:** Agree on everything before opening Godot.

- Decide the story.
  - Hero, setting, NPC purpose, success, failure.
- Choose the 3 rooms:
  - Room 1: entrance
  - Room 2: combat
  - Room 3: NPC/end
- Confirm roles:
  - Jacob → Gameplay/Systems  
  - Krystal → Levels + Enemy/NPC  
  - Lily → Art + Story/UI

---

## PHASE 1 – Art & Story Foundations (Lily)

### Lily’s Tasks:
- Finalize sprites:
  - Player  
  - NPC  
  - Enemy  
  - Tiles (floor, wall, obstacle)
- Build simple tileset sheet.
- Write story:
  - Intro  
  - NPC dialogue  
  - Success  
  - Failure  

### Jacob & Krystal:
- Approve scale and complexity of art.
- Confirm tile sizes.

**After PHASE 1:** Basic art & story ready.

---

## PHASE 2 – Godot Project Setup (Jacob)

### Jacob’s Tasks:
- Create project folder.
- Add folder structure:
  - scenes/  
  - scenes/rooms/  
  - scenes/characters/  
  - assets/sprites/  
  - ui/
- Import Lily’s sprites.
- Create `Main.tscn`.

### Krystal:
- Watch collision & tileset setup.

**After PHASE 2:** Project is ready to build on.

---

## PHASE 3 – Player & Basic Controls (Jacob)

### Jacob’s Tasks:
- Create `Player.tscn`:
  - CharacterBody2D / KinematicBody2D  
  - Sprite2D  
  - CollisionShape2D
- Add movement script:
  - `Input.is_action_pressed()`
- Add health system.
- Test movement in test room.

**After PHASE 3:** Player can walk around.

---

## PHASE 4 – Build Dungeon Rooms (Krystal)

### Krystal’s Tasks:
- Create:
  - Room1.tscn  
  - Room2.tscn  
  - Room3.tscn
- Add TileMaps & paint:
  - Floor  
  - Walls  
  - Obstacles
- Add PlayerSpawn point in Room1.
- Add door transitions using Area2D.

### Jacob’s Tasks:
- Create Room Manager for scene switching.
- Test room movement.

**After PHASE 4:** Rooms built and ready.

---

## PHASE 5 – Scene Switching (Jacob + Krystal)

### Jacob:
- Implement scene switching logic using:
  - `change_scene_to_file()`
- Link Intro → Room1.

### Krystal:
- Connect door triggers:
  - Room1 → Room2  
  - Room2 → Room1  
  - Room2 → Room3  
  - Room3 → Room2  

**After PHASE 5:** Rooms fully connected.

---

## PHASE 6 – Enemies & NPC (Krystal leads, Jacob supports)

### Krystal’s Tasks:
- Create `Enemy.tscn`:
  - Sprite2D + CollisionShape2D  
  - Patrol script (left/right or up/down)
- Add player damage.
- Place enemies in rooms.
- Create `NPC.tscn`:
  - Movement pattern  
  - Interaction area  
- NPC Interaction:
  - Press E near NPC → show dialogue  
  - If conditions met → success ending

### Jacob:
- Support damage system & signals.

**After PHASE 6:** Enemies & NPC functional.

---
## PHASE 7 – Cutscenes & UI (Lily leads, Jacob supports)

### Lily’s Tasks:
- Create cutscenes:
  - Intro.tscn  
  - Success.tscn  
  - Failure.tscn
- Create UI:
  - Health bar or hearts  
  - Dialogue box

### Jacob’s Tasks:
- Wire transitions:
  - Intro → Room1  
  - Failure when health <= 0  
  - Success when NPC triggers event
- Connect UI to player health variable.

**After PHASE 7:** Game has intro, gameplay, and endings.

---

## PHASE 8 – Testing, Polish, Submission (Everyone)

### Everyone:
- Playtest:
  - Room transitions  
  - Enemy movement  
  - Player damage  
  - NPC interaction  
  - Cutscenes
- Polish:
  - Adjust enemy speed  
  - Fix tile alignment  
  - Improve visuals if needed
- Record gameplay video:
  - Intro → Rooms → Success  
  - Optional: record failure scene
- GitHub:
  - Make sure all assets & scenes are committed
  - README.md added
  - Timeline.md added

---

## One-Page Cheatsheet

### Lily (Art & Story)
- First: sprites, tiles, story text  
- Later: cutscenes, UI, dialogue box  

### Jacob (Gameplay Programmer)
- First: player, movement, project setup  
- Later: transitions, health, UI connections  

### Krystal (Level & Enemy/NPC Programmer)
- First: all dungeon rooms  
- Later: enemy patrols, NPC movement/interaction  

---

