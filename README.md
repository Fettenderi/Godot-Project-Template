# GodotProjectBase

This template provides a structured starting point for your Godot game development, making it easier to organize your files, follow conventions, and get up and running quickly.

## Directory Structure

The template includes the following directories:

- **addons/**: Place your Godot plugins here.
- **assets/**: Contains all game assets, organized into subdirectories:
  - **art/**: Sprites, textures, and other visual assets.
  - **resources/**: Custom resources like scripts, materials, etc.
  - **sfx/**: Sound effects and music.
- **components/**: Contains reusable components like hitboxes, hurtboxes, stats, etc.
- **interfaces/**: Contains scenes that define interfaces or abstractions that require specific initialization.
- **singletons/**: Scenes that are autoloaded and handle complex systems and interactions.
- **scenes/**: Fully functional scenes ready to be instantiated, like enemies, items, doors, keys, etc.
- **scripts/**: General scripts that don't fit into other categories.

## Naming Conventions

To keep the project organized and maintainable, please follow these naming conventions:

### Folders
- **snake_case**: Use lowercase letters and underscores for folder names.
  - Example: `assets/`, `components/`, `singletons/`

### Scenes
- **PascalCase**: Capitalize the first letter of each word.
  - Example: `MainMenu.tscn`, `Player.tscn`

### Scripts
- **PascalCase**: Match the script name to the scene or node it is associated with.
  - Example: `MainMenu.gd`, `PlayerController.gd`

### Classes
- **PascalCase**: Capitalize the first letter of each word.
  - Example: `class_name PlayerController`, `class_name EnemyAI`

### Variables
- **snake_case**: Use lowercase letters and underscores.
  - Example: `var player_speed = 200`, `var enemy_count = 5`

### Constants
- **UPPERCASE_WITH_UNDERSCORES**: Use all uppercase letters with underscores separating words.
  - Example: `const MAX_SPEED = 400`, `const GRAVITY = 9.8`

### Signals
- **snake_case**: Use lowercase letters and underscores.
  - Example: `signal health_changed`, `signal enemy_defeated`

### Functions
- **snake_case**: Use lowercase letters and underscores for function names.
  - Prefix private functions with an underscore.
  - Example: `func move_player(delta):`, `func _calculate_damage():`

## Example Usage

### Creating a New Scene

1. **Create the Scene**: Add a new scene to the `scenes/` directory.
2. **Add a Script**: Attach a new script to the main node of your scene and place it in the `scripts/` directory, following the naming conventions.

### Using Components

1. **Create Component**: Define your component in the `components/` directory.
2. **Attach Component**: Instance and attach the component to your scene as needed.

### Setting Up Singletons

1. **Create Singleton**: Add a scene in the `singletons/` directory.
2. **Autoload**: Go to `Project Settings > Autoload`, add your singleton, and enable it.

### Signals and Connections

Follow the naming conventions for signals and ensure you connect them properly in your scripts. Example:

```gdscript
signal player_died

func _ready():
    connect("player_died", self, "_on_player_died")

func _on_player_died():
    print("Player has died")
