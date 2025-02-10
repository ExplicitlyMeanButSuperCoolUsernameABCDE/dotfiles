
# 🖥️ macOS Dotfiles & Configuration  

This repository contains my **personal macOS configuration** tailored for Apple Silicon (M1/M2/M3) users. It includes a **tiling window manager**, a **customized terminal experience**, and an optimized **Neovim** setup.

## **🚀 Features**
- **Window Manager**: [yabai](https://github.com/koekeishiya/yabai) - dynamic tiling window manager for macOS.
- **Hotkey Daemon**: [skhd](https://github.com/koekeishiya/skhd) - global keyboard shortcuts.
- **Terminal**: [Ghostty](https://ghostty.dev) - modern, GPU-accelerated terminal.
- **Shell**: [Fish Shell](https://fishshell.com) - user-friendly, autosuggestion-based shell.
- **Prompt**: [Starship](https://starship.rs) - fast and customizable prompt.
- **Editor**: [Neovim](https://neovim.io) with [LazyVim](https://www.lazyvim.org/) for a feature-rich experience.
- **Package Manager**: [Homebrew](https://brew.sh) for easy package management.

### **1️⃣ Install Required Packages**  
Install essential dependencies using **Homebrew**:  

```sh
brew install ghostty
brew install yabai
brew install skhd
brew install nvim
brew install lazyvim
brew install fish
brew install starship
brew install git
```
### **2️⃣ Install Extra Utilities (optional, but recommended)**
```sh 
brew install bat          # Better cat with syntax highlighting
brew install borders      # Floating window decorations for yabai
brew install fastfetch    # System info display (faster than neofetch)
brew install fortune      # Display random quotes
brew install zoxide       # Smarter cd command
```

### **3️⃣ Clone This Repository**
`git clone https://github.com/xf6i/dotfiles.git ~/.config`

### **4️⃣ Enable Services**
Start yabai and skhd to ensure they launch at startup:
```sh 
brew services start yabai
brew services start skhd
```

## **📂 Folder Structure**
Here’s how the repository is structured:
```
~/.config/
├── borders/
│   └── bordersrc         # Configuration for floating window decorations
├── fastfetch/
│   └── config.jsonc      # Configuration for system info display
├── fish/
│   ├── functions/        # Custom Fish functions
│   └── config.fish       # Main Fish shell configuration
├── ghostty/
│   ├── shaders/          # Shader files for terminal effects
│   └── ghostty           # Terminal configuration file
├── karabiner/
│   └── karabiner.json    # Hotkey remapping configuration
├── nvim/
│   ├── lua/              # Lua-based Neovim configurations
│   ├── init.lua          # Main Neovim configuration
│   ├── lazy-lock.json    # Lockfile for LazyVim plugins
│   └── lazyvim.json      # LazyVim-specific configuration
├── skhd/
│   └── skhdrc            # Hotkey configuration file
├── yabai/
│   ├── startup.sh        # Script to start Yabai
│   └── window_gap        # Custom gaps configuration
├── starship.toml         # Starship prompt configuration
└── README.md             # Documentation for the configuration

```
## **🎛️ Custom Keybindings (SKHD)**
The **skhd** configuration includes custom keybindings for efficient window and system management.

| Keybinding        | Action                                 |
|-------------------|---------------------------------------|
| `cmd + j`         | Focus window down                    |
| `cmd + k`         | Focus window up                      |
| `cmd + h`         | Focus window left                    |
| `cmd + l`         | Focus window right                   |
| `cmd + enter`     | Swap window with the main window      |
| `cmd + shift + r` | Restart **yabai**                    |

Customize keybindings in `~/.config/skhd/skhdrc`.


## **🌟 Customization**
- **Neovim**: Add or remove plugins in `~/.config/nvim/lua/plugins/`.
- **Yabai**: Edit tiling window manager settings in `~/.config/yabai/startup.sh`.
- **Fish Shell**: Adjust shell options in `~/.config/fish/config.fish`.
- **Starship Prompt**: Change the appearance in `~/.config/starship.toml`.

## **📜 License**
This repository is licensed under the **MIT License**. Feel free to use and modify it.

