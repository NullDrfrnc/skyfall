### Skyfall  
Skyfall is my attempt at making a sorta hero movement shooter meets mecha meets a horribly dreadfull world meets movement shooter. I guess think titanfall with unique characters set in an environment like half-life? (still workshopping the entire setting and world obviously)
---
## Developing  
This is mostly a solo project but if this ever releases I would love for it to be at leats kinda modable.  
I'm making it in Godot 4.8-beta2 but will update it to Godot 4.8 as soon as it releases. I might update it to future engine revisions if they add something meaningfull and/or don't break my entire project like a certain swedish company loves to do with their game updates. Other then that I'm planning on using yml for the configuration, you might ask why? Felt like it ¯\_(ツ)_/¯ (and it would make adding future features easier maybe perchance?).
---
## Filestructure  
I don't think anyone makes shit like this but my brain has settled on this idea for the folder structure, blending the usual java package structure with the feature based folders/packages my friends use for godot.
```
root
├── assets
│	└── # Assets like models, textures, fonts and other asset like doohickeys
├── game
│	└── # Name subject to change, scripts, scenes etc live in here
├── level
│	└── # Level related shit goes here (maps, features etc)
└── resources
	└── # Configs go in here, things like weapon stats and mech speeds
```
Each of these folders will be sorted on a feature. So if we're making guns for example, we would add a gun folder and it would look like:
```
root
├── assets
│	└── gun
│		├── glock.glb # Models etc for the weapons (and probs textures/materials too)
│		└── mp7.glb 
├── game
│	└── gun 
│		├── script
│		│	├── gun_config_loader.gdscript # Handles the loading and applying of a gun at runtime. 
│		│	└── gun.gdscript # Handles business logic, like what to do on gun shooting
│		└── scene
│			└── gun.tscn
└── resources
	└── gun
		├── glock.yml # Handles configuration of damage, scope time, bullet spread, firerate etc etc
		└── mp7.yml
```
---
## Keybinds
I have a specific keybinding system to make it more clear what each keybind does. It exists of a 2/3 letter prefix + _ + action name which can look like: mv_forward, atk_left_mb or ui_accept.
