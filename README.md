# FiveM Custom NPC Demo

This project shows how to create and interact with a custom NPC in a FiveM GTA V server. Players can spawn, talk to, and trigger a custom voice line with the NPC.

# Warning
    This project is for educational perpose only so be carefull of this dont mess with anything and mod anything unwanted things.

# Read Rockstart and fiveM policies before modding.

## Features
- Spawn an invincible NPC at custom coordinates
- Player can interact (press `E`) to make the NPC talk
- Supports custom voice using InteractSound resource

## Installation

1. Clone this repo or download the `npc` folder.
2. 'client.lua' files contains the code for custom npc.
3. Place `npc` in your FiveM server `resources` directory.
4. (Optional) Add your own `.ogg` voice file for the NPC.
5. Add to `server.cfg`:
    ```
    ensure interact-sound
    ensure my_npc
    ```
6. Restart your server and find your NPC in-game!

## License

MIT License.  
See [LICENSE](LICENSE) for details.

## Credits

- GTA V by Rockstar Games (all rights belong to original creators)
- FiveM platform by CitizenFX
- InteractSound by the FiveM community

**This project is for learning and demonstration purposes only. Not affiliated with Rockstar Games or CitizenFX.**
