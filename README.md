# blueprint-installer


> Blueprint is the industry-leading extension framework for Pterodactyl — install, manage, and develop extensions without touching core panel files.

## Install


Run this single command on your VPS as **root**:


```bash
bash <(curl -s https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```


No manual steps. The script handles everything automatically.


## What the script does


- Detects your OS, web server, and Pterodactyl panel path
- - Checks PHP version (8.0+ required)
  - - Installs all required packages: `ca-certificates`, `curl`, `git`, `gnupg`, `unzip`, `wget`, `zip`
    - - Installs **Node.js 22.x** via NodeSource official repository
      - - Installs **Yarn** and runs `yarn install` in the panel directory
        - - Installs **Composer** if not present
          - - Checks available disk space (500MB minimum)
            - - Prompts for backup before making any changes
              - - Downloads latest Blueprint release from GitHub
                - - Extracts and configures `.blueprintrc`
                  - - Runs the official `blueprint.sh` setup
                    - - Sets correct file permissions
                      - - Reloads Nginx or Apache2
                        - - Adds bash autocompletion
                         
                        - ## Requirements
                       
                      - | | |
                      - |---|---|
                      - | OS | Ubuntu 20.04 / 22.04 / 24.04 or Debian 10 / 11 / 12 |
                      - | Pterodactyl | Must be installed |
                      - | PHP | 8.0 or higher |
                      - | Web Server | Nginx or Apache2 |
                      - | Disk Space | 500MB free minimum |
                      - | Access | Root required |
                     
                    - ## Links
                   
                  - - Blueprint docs: https://blueprint.zip/docs
                    - - Extensions: https://blueprint.zip/browse
                      - - Blueprint Discord: https://discord.com/servers/blueprint-1063548024825057451
                        - 
