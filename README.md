# Zelda Dungeon Project  
### SDEV 255 — Group Project  
A 3-room top-down dungeon game built in **Godot**.  
Created by **Lily**, **Jacob**, and **Krystal**.
Watch it in action: https://youtu.be/QOpZMp1SF6w

---

## Overview  
This project recreates **three sequential dungeon rooms** inspired by the original *Legend of Zelda*.  
Our version includes:

- A **player** with top-down movement  
- **Three connected dungeon rooms**  
- **Enemies** with non-random patrol movement  
- A moving **NPC** with interaction  
- **Intro cutscene**, **success ending**, and **failure ending**  
- Custom pixel art created by the team  
- Simple HUD for player health  

This project demonstrates our understanding of tilemaps, scene transitions, basic AI movement, collisions, and narrative elements in Godot.

---

# Team Roles

## Lily — Role 3: Art, UI & Story  
- Created all pixel art assets  
  - Player, NPC, enemies  
  - Floor tiles, wall tiles, obstacles  
- Designed UI elements (HP, dialogue box)  
- Wrote story text for:  
  - Intro cutscene  
  - NPC dialogue  
  - Success ending  
  - Failure ending  
- Built the cutscene scenes

---

## Jacob — Role 1: Gameplay & Systems Programmer  
- Set up the Godot project structure  
- Implemented the **player**:  
  - Movement  
  - Collision  
  - Health system  
- Coded **scene transitions** between all rooms  
- Connected cutscenes, health mechanic, and UI  
- Integrated enemy/NPC logic into the overall game flow

---

## Krystal — Role 2: Level + Enemy/NPC Programmer  
- Built all **three dungeon rooms** using TileMaps  
- Added walls, obstacles, doors, and spawn points  
- Created **Enemy** scenes with:  
  - Non-random patrol patterns  
  - Player damage on contact  
- Created **NPC** scene with:  
  - Simple movement path  
  - Interaction trigger  
- Placed enemies and NPCs in the rooms  
- Worked with Jacob to connect door transitions

---

# How to Play

**Movement:** Arrow Keys or WASD  
**Interact/Talk:** E  

**Goal:**  
- Travel through the three dungeon rooms  
- Avoid or defeat enemies  
- Reach the NPC in the final room  
- Complete the objective to trigger the success ending  

**Game Over:**  
- If the player’s health reaches zero, the failure ending plays.

---

# Project Structure

```plaintext
/assets
    /sprites

/scenes
    /rooms
        Room1.tscn
        Room2.tscn
        Room3.tscn
    Player.tscn
    Enemy.tscn
    NPC.tscn

/ui
    dialogue_box.tscn
    health_ui.tscn

/cutscenes
    intro.tscn
    success.tscn
    failure.tscn
```

---

# How to Run

1. Install **Godot 4.x**  
2. Download or clone this repository  
3. Open the project folder in Godot  
4. Run the main scene (`Main.tscn` or `Intro.tscn`)  
5. Play through the intro → rooms → endings

