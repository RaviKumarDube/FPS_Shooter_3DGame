# FPS Shooter 3D Game

A first-person shooter (FPS) game developed with the Godot Engine using GDScript.

## Overview

FPS_Shooter_3DGame is a 3D first-person shooter game built with Godot Engine. This project showcases game development fundamentals including player controls, weapon mechanics, enemy AI, and immersive 3D gameplay.

## Features

- **3D First-Person Perspective**: Immersive first-person shooter gameplay
- **Player Movement**: Smooth character controller with WASD movement
- **Enemy AI**: Intelligent enemy behavior and pathfinding
- **Level Design**: Multi-level gameplay with varied environments

## Technology Stack

- **Engine**: Godot Engine
- **Language**: GDScript
- **Platform**: Cross-platform (Windows, macOS, Linux)

## Requirements

- Godot Engine 4.0+ (or appropriate version for your project)
- Basic system requirements for running 3D games

## Controls

| Key | Action |
|-----|--------|
| `W` `A` `S` `D` | Move forward, left, backward, right |
| `Space` | Jump |
| `Mouse` | Look around |
| `Left Click` | Fire weapon |
| `E` | Interact/Pick up items |
| `ESC` | Pause menu |

## Project Structure

```
FPS_Shooter_3DGame/
├── scenes/              # Game scenes and levels
├── scripts/             # GDScript files for game logic
├── assets/              # 3D models, textures, and sprites             
├── project.godot        # Godot project configuration
└── README.md            # This file
```

## Game Mechanics

### Player
- First-person camera system with mouse look
- Customizable movement speed and jump height


### Weapons
- Multiple weapon options with unique characteristics
- Ammunition system and reload mechanics
- Weapon switching capabilities


## Contributing

Contributions are welcome! If you'd like to improve this project:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
## Acknowledgments

- Godot Engine community for excellent documentation and tutorials
- Contributors and testers who help improve the game

### Game won't start
- Ensure Godot Engine version matches project requirements
- Check that all assets are properly imported
- Verify script errors in the debugger console

### Performance issues
- Adjust graphics settings (resolution, effects quality)
- Optimize 3D models and textures
- Profile using Godot's built-in profiler

