# FiveM Custom NPC Demo

This project demonstrates how to create and interact with a custom NPC in a FiveM GTA V server. Players can spawn, talk to, and trigger a custom voice line with the NPC.

---

## ⚠️ Warning

This project is for **educational purposes only**.  
- **Do not use this for cheating or malicious activity.**
- Always respect Rockstar Games and FiveM’s policies and terms of use.
- I am not responsible for any misuse, server bans, or damages from this code.  
**You are responsible for your own actions.**

Read Rockstar and FiveM policies before modding or running a custom server.

---

## Features

- Spawn an invincible NPC at custom coordinates
- Player can interact (press `E`) to make the NPC talk
- Supports custom voice using InteractSound resource

---

## Installation

1. Clone this repo or download the `my_npc` folder.
2. The `client.lua` file contains the code for the custom NPC.
3. Place the `my_npc` folder in your FiveM server’s `resources` directory.
4. *(Optional)* Add your own `.ogg` voice file for the NPC.
5. Add to `server.cfg`:
    ```
    ensure interact-sound
    ensure my_npc
    ```
6. Restart your server and find your NPC in-game!

---

## License

MIT License  
See [LICENSE](LICENSE) for details.

---

## Credits

- GTA V by Rockstar Games (all rights belong to original creators)
- FiveM platform by CitizenFX
- InteractSound by the FiveM community

**This project is for learning and demonstration purposes only.  
Not affiliated with Rockstar Games or CitizenFX.**
