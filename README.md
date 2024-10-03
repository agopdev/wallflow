# Wallflow

```
____    __    ____  ___       __       __       _______  __        ______   ____    __    ____ 
\   \  /  \  /   / /   \     |  |     |  |     |   ____||  |      /  __  \  \   \  /  \  /   / 
 \   \/    \/   / /  ^  \    |  |     |  |     |  |__   |  |     |  |  |  |  \   \/    \/   /  
  \            / /  /_\  \   |  |     |  |     |   __|  |  |     |  |  |  |   \            /   
   \    /\    / /  _____  \  |  `----.|  `----.|  |     |  `----.|  `--'  |    \    /\    /    
    \__/  \__/ /__/     \__\ |_______||_______||__|     |_______| \______/      \__/  \__/     
```

**Wallflow** is a bash script to set wallpapers from **Wallhaven** API in most **Popular** Linux Desktop Enviroments. Works with X11.

**IMPORTANT:** I wrote this script for myself, even if I tried to make this compatible with others devices I can´t guarantee that works on every machine. If you found a problem or know how to solve it. Create a new issue.

__Programs required:__ The following software is necessary to execute Wallflow with no problems
- curl
- jq
- xrandr
- git

These programs can be installed with:
```bash
$ sudo apt update && sudo apt install curl jq xrandr git
```

# Install
__Wallflow can be installed by following these steps:__

+ Clone GitHub repository or download the last version from [Releases](https://github.com/agopdev/wallflow/releases)

    ```bash
    $ git clone https://github.com/agopdev/wallflow.git
    ```
+ Change to cloned directory

    ```bash
    $ cd ./wallflow
    ```
+ Give execute permission to install.sh

    ```bash
    $ chmod +x ./install.sh
    ```
+ Execute `install.sh` from terminal with option `--install`

    ```bash
    $ ./install.sh --install
    ```

# Uninstall
**WARNING:** Uninstalling wallflow also removes .config/wallflow and .local/share/wallflow directories. So save your `config.json` and `history` dir if you don´t want to lose it.

__Wallflow can be uninstalled by following these steps:__

+ Run `install.sh` with the option `--uninstall`

    ```bash
    $ ./install.sh --uninstall
    ```

+ Remove cloned folder

    ```bash
    $ rm -rf ./wallflow
    ```

# Usage
### Commands
- `start`: You can simply start wallflow by executing `wallflow start` in the terminal.
- `stop`: Kills all wallflow start processes.
- `change`: Change current wallpaper to a random tag already added without restarting the timer.
- `add`: Add a search parameter.
- `del`: Remove a search parameter.
- `enable`: Enable a search option.
- `disable`: Disable a search option.

### Global Options
- `-h`, `--help`: Prints wallflow info.
- `-sc`, `--show-config`: Prints the actual configuration.
- `-sm`, `--show-monitors`: Prints the available monitors.
- `-v`, `--version`: Prints the version of wallflow.

### Change options
- `""`: Change actual wallpaper from the previously added tags.
- `-q`, `--query`: Change actual wallpaper from a specific query.
- `-i`, `--id`: Change actual wallpaper from id.

### Search Options
- `-c`, `--categories`: Accepted values: general, anime, people.
- `-p`, `--purity`: Accepted values: sfw, sketchy, nsfw.

### Search Parameters
- `-r`, `--resolution`: Resolution for the search.
- `-t`, `--tag`: Tag for the search.

### Configuration Options
- `--interval`: Set time in seconds until next wallpaper.
- `--history`: Set the history length. Only saves the last images.
- `--api-key`: Set API key for the nsfw purity option.


## Donations
This script is a part-time hobby and sometimes not actively mantained in months (even years). 

Still, if you like my work and would like to support me, you can do so through this [link](https://paypal.me/agopdev).