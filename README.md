# Blueprint Installer for Pterodactyl Panel

<div align="center">

```
  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ•—     â–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—
  â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ•‘â•šâ•â•â–ˆâ–ˆâ•”â•â•â•
  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â–ˆâ–ˆâ•— â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   
  â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•  â–ˆâ–ˆâ•”â•â•â•â• â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘â•šâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   
  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘ â•šâ–ˆâ–ˆâ–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   
  â•šâ•â•â•â•â•â• â•šâ•â•â•â•â•â•â• â•šâ•â•â•â•â•â• â•šâ•â•â•â•â•â•â•â•šâ•â•     â•šâ•â•  â•šâ•â•â•šâ•â•â•šâ•â•  â•šâ•â•â•â•   â•šâ•â•  
```

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Blueprint](https://img.shields.io/badge/Blueprint-Framework-blue)](https://blueprint.zip)
[![Pterodactyl](https://img.shields.io/badge/Pterodactyl-Panel-green)](https://pterodactyl.io)

**A fully automated installer for [Blueprint](https://blueprint.zip) â€” the industry-leading extension framework for Pterodactyl Panel.**

</div>

---

## âš¡ One-Line Install (recommended)

Run this single command on your VPS as **root**:

```bash
bash <(curl -s https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

That's it. No downloading, no manual steps.

---

## ðŸ“‹ What It Does

This installer automates the **entire official Blueprint installation process** from [blueprint.zip/docs](https://blueprint.zip/docs?page=getting-started/Installation):

| Step | Description |
|------|-------------|
| âœ… Root check | Ensures the script runs with proper privileges |
| âœ… OS detection | Detects and validates your Linux distribution |
| âœ… Web server detection | Auto-detects Nginx or Apache2 |
| âœ… Panel path detection | Finds your Pterodactyl installation automatically |
| âœ… PHP version check | Validates PHP 8.0+ is installed |
| âœ… Dependency install | Installs all required packages per official docs |
| âœ… Node.js 22.x | Installs via NodeSource official repository |
| âœ… Yarn + node modules | Installs Yarn globally and runs `yarn install` |
| âœ… Composer | Installs/validates PHP dependency manager |
| âœ… Disk space check | Warns if disk space is below 500MB |
| âœ… Backup warning | Prompts with backup command before any changes |
| âœ… Blueprint download | Downloads latest release from GitHub automatically |
| âœ… Blueprint extraction | Extracts `release.zip` to panel directory |
| âœ… `.blueprintrc` setup | Creates Blueprint config file (official step) |
| âœ… Blueprint setup | Runs `blueprint.sh` with correct environment |
| âœ… File permissions | Sets proper ownership and permissions |
| âœ… Bash autocompletion | Adds `source blueprint;` to `~/.bashrc` |
| âœ… Web server reload | Reloads Nginx or Apache after installation |

---

## ðŸ–¥ï¸ Requirements

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

## ðŸš€ Install Methods

### Method 1 â€” One-liner (no download needed)

```bash
bash <(curl -s https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

### Method 2 â€” wget one-liner

```bash
bash <(wget -qO- https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh)
```

### Method 3 â€” Download and run

```bash
wget https://raw.githubusercontent.com/miuubyte/blueprint-installer/main/blueprint.sh
chmod +x blueprint.sh
bash blueprint.sh
```

---

## ðŸ’¡ What is Blueprint?

[Blueprint](https://blueprint.zip) is the industry-leading extension/modding framework for the [Pterodactyl](https://pterodactyl.io) game server panel. It allows you to install, manage, and develop extensions that modify and enhance your Pterodactyl panel without touching its core files directly.

- ðŸ”Œ **Extensions marketplace**: [blueprint.zip/browse](https://blueprint.zip/browse)
- ðŸ“– **Documentation**: [blueprint.zip/docs](https://blueprint.zip/docs)
- ðŸ’¬ **Community Discord**: [discord.gg/blueprint](https://discord.com/servers/blueprint-1063548024825057451)

---

## ðŸ›¡ï¸ Safety & Warnings

> [!WARNING]
> Blueprint modifies core Pterodactyl panel files. Always **back up your panel** before running this installer.

Backup command:
```bash
tar -czf /root/ptero_backup_$(date +%Y%m%d_%H%M%S).tar.gz /var/www/pterodactyl
```

> [!NOTE]
> This installer follows the **official Blueprint documentation** step-by-step. No custom or unsupported methods are used.

---

## ðŸ”§ Post-Installation

After installation completes:

1. Log in to your Pterodactyl panel as an **administrator**
2. The **Blueprint** menu will appear in your admin sidebar
3. Browse and install extensions from [blueprint.zip/browse](https://blueprint.zip/browse)
4. Activate bash autocompletion: `source ~/.bashrc`

---

## ðŸ“„ License

MIT License. See [LICENSE](LICENSE) for details.

---

<div align="center">
Made with â¤ï¸ by <a href="https://github.com/miuubyte">miuubyte</a> &nbsp;|&nbsp; Powered by <a href="https://blueprint.zip">Blueprint</a>
</div>
