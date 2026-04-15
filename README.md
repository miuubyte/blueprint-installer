# Blueprint Installer for Pterodactyl Panel

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Blueprint](https://img.shields.io/badge/Blueprint-Framework-blue)](https://blueprint.zip)
[![Pterodactyl](https://img.shields.io/badge/Pterodactyl-Panel-green)](https://pterodactyl.io)
[![Shell](https://img.shields.io/badge/Shell-Bash-orange)](https://www.gnu.org/software/bash/)

**A fully automated installer for [Blueprint](https://blueprint.zip) â€” the industry-leading extension framework for Pterodactyl Panel.**

</div>

---

## One-Line Install

Run this single command on your VPS as **root**:

```bash
bash <(curl -s https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

**No downloading, no manual steps. Just run and follow the prompts.**

---

## What It Does

This installer automates the **entire official Blueprint installation process** per [blueprint.zip/docs](https://blueprint.zip/docs?page=getting-started/Installation):

| Step | Description |
|------|-------------|
| Root check | Ensures the script runs with proper privileges |
| OS detection | Detects and validates your Linux distribution |
| Web server detection | Auto-detects Nginx or Apache2 |
| Panel path detection | Finds your Pterodactyl installation automatically |
| PHP version check | Validates PHP 8.0+ is installed |
| Dependency install | Installs all required packages per official docs |
| Node.js 22.x | Installs via NodeSource official repository |
| Yarn + node modules | Installs Yarn globally and runs `yarn install` |
| Composer | Installs/validates PHP dependency manager |
| Disk space check | Warns if disk space is below 500MB |
| Backup warning | Prompts with backup command before any changes |
| Blueprint download | Downloads latest release from GitHub automatically |
| Blueprint extraction | Extracts `release.zip` to panel directory |
| `.blueprintrc` setup | Creates Blueprint config file (official step) |
| Blueprint setup | Runs `blueprint.sh` with correct environment |
| File permissions | Sets proper ownership and permissions |
| Bash autocompletion | Adds `source blueprint;` to `~/.bashrc` |
| Web server reload | Reloads Nginx or Apache after installation |

---

## Requirements

| Requirement | Details |
|-------------|---------|
| **OS** | Ubuntu 20.04 / 22.04 / 24.04 or Debian 10 / 11 / 12 |
| **Pterodactyl Panel** | Must be installed at a standard path |
| **PHP** | 8.0 or higher (8.1+ recommended) |
| **Web Server** | Nginx or Apache2 |
| **Disk Space** | Minimum 500MB free |
| **Internet Access** | Required to download Blueprint and dependencies |
| **Root Access** | Required |

---

## Install Methods

### Method 1 â€” curl one-liner (recommended)

```bash
bash <(curl -s https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

### Method 2 â€” wget one-liner

```bash
bash <(wget -qO- https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

### Method 3 â€” Download and run manually

```bash
wget https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh
chmod +x blueprint.sh
bash blueprint.sh
```

---

## What is Blueprint?

[Blueprint](https://blueprint.zip) is the industry-leading extension/modding framework for [Pterodactyl](https://pterodactyl.io) game server panel. It lets you install, manage, and develop extensions that enhance your panel without touching core files.

- **Extensions marketplace**: [blueprint.zip/browse](https://blueprint.zip/browse)
- **Documentation**: [blueprint.zip/docs](https://blueprint.zip/docs)
- **Community Discord**: [discord.gg/blueprint](https://discord.com/servers/blueprint-1063548024825057451)

---

## Safety & Warnings

> **Warning:** Blueprint modifies core Pterodactyl panel files. Always **back up your panel** before running this installer.

Backup command:

```bash
tar -czf /root/ptero_backup_$(date +%Y%m%d_%H%M%S).tar.gz /var/www/pterodactyl
```

> **Note:** This installer follows the **official Blueprint documentation** step-by-step. No custom or unsupported methods are used.

---

## Post-Installation

After installation completes:

1. Log in to your Pterodactyl panel as an **administrator**
2. The **Blueprint** menu will appear in your admin sidebar
3. Browse and install extensions from [blueprint.zip/browse](https://blueprint.zip/browse)
4. Activate bash autocompletion: `source ~/.bashrc`

---

## License

MIT License. See [LICENSE](LICENSE) for details.

---

<div align="center">
Made with love by <a href="https://github.com/miuubyte">miuubyte</a> &nbsp;|&nbsp; Powered by <a href="https://blueprint.zip">Blueprint</a>
</div>
