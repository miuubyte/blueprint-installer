#!/bin/bash

# ============================================================
#  BLUEPRINT.ZIP INSTALLER FOR PTERODACTYL PANEL
#  Official docs: https://blueprint.zip/docs?page=getting-started/Installation
#  GitHub: https://github.com/miuubyte/blueprint-installer
# ============================================================

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
RESET='\033[0m'

CHECK="âœ”"
CROSS="âœ˜"
WARN="âš "
INFO="â„¹"
ARROW="âžœ"

# ============================================================
# BANNER
# ============================================================
print_banner() {
  clear
  echo -e "${CYAN}${BOLD}"
  echo "  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ•—     â–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—"
  echo "  â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ•‘â•šâ•â•â–ˆâ–ˆâ•”â•â•â•"
  echo "  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â–ˆâ–ˆâ•— â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   "
  echo "  â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•  â–ˆâ–ˆâ•”â•â•â•â• â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘â•šâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   "
  echo "  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘ â•šâ–ˆâ–ˆâ–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   "
  echo "  â•šâ•â•â•â•â•â• â•šâ•â•â•â•â•â•â• â•šâ•â•â•â•â•â• â•šâ•â•â•â•â•â•â•â•šâ•â•     â•šâ•â•  â•šâ•â•â•šâ•â•â•šâ•â•  â•šâ•â•â•â•   â•šâ•â•  "
  echo -e "${RESET}"
  echo -e "${MAGENTA}${BOLD}        Blueprint.zip Installer for Pterodactyl Panel${RESET}"
  echo -e "${BLUE}        Docs: https://blueprint.zip/docs?page=getting-started/Installation${RESET}"
  echo ""
  echo -e "${CYAN}â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”${RESET}"
  echo ""
}

# ============================================================
# HELPERS
# ============================================================
info()    { echo -e "${CYAN}${INFO}  ${RESET}$1"; }
success() { echo -e "${GREEN}${CHECK} ${RESET}$1"; }
warn()    { echo -e "${YELLOW}${WARN}  WARNING: ${RESET}$1"; }
error()   { echo -e "${RED}${CROSS} ERROR: ${RESET}$1"; }
step()    { echo -e "\n${BLUE}${BOLD}${ARROW} $1${RESET}"; echo -e "${CYAN}â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”${RESET}"; }
abort()   { error "$1"; echo ""; exit 1; }

confirm() {
  read -rp "$(echo -e "${YELLOW}${WARN}  $1 [y/N]: ${RESET}")" ans
  [[ "$ans" =~ ^[Yy]$ ]]
}

# ============================================================
# ROOT CHECK
# ============================================================
check_root() {
  step "Checking Privileges"
  if [[ $EUID -ne 0 ]]; then
    abort "This script must be run as root. Try: sudo bash blueprint.sh"
  fi
  success "Running as root."
}

# ============================================================
# OS DETECTION
# ============================================================
detect_os() {
  step "Detecting Operating System"
  if [[ ! -f /etc/os-release ]]; then
    abort "Cannot detect OS. /etc/os-release not found."
  fi
  source /etc/os-release
  OS_NAME="$ID"
  OS_VERSION="$VERSION_ID"
  OS_PRETTY="$PRETTY_NAME"

  info "Detected: ${BOLD}${OS_PRETTY}${RESET}"

  case "$OS_NAME" in
    ubuntu)
      if [[ "$OS_VERSION" =~ ^(20\.04|22\.04|24\.04)$ ]]; then
        success "Ubuntu $OS_VERSION is supported."
      else
        warn "Ubuntu $OS_VERSION has not been officially tested. Continuing anyway..."
      fi
      ;;
    debian)
      if [[ "$OS_VERSION" =~ ^(10|11|12)$ ]]; then
        success "Debian $OS_VERSION is supported."
      else
        warn "Debian $OS_VERSION has not been officially tested. Continuing anyway..."
      fi
      ;;
    *)
      warn "OS '${OS_NAME}' is not officially supported by Blueprint."
      confirm "Continue anyway?" || abort "Aborted by user."
      ;;
  esac
}

# ============================================================
# DETECT WEBSERVER
# ============================================================
detect_webserver() {
  step "Detecting Web Server"
  if systemctl is-active --quiet nginx; then
    WEBSERVER="nginx"
    WEBUSER="www-data"
    success "Nginx is running. Web user: www-data"
  elif systemctl is-active --quiet apache2; then
    WEBSERVER="apache2"
    WEBUSER="www-data"
    success "Apache2 is running. Web user: www-data"
  else
    warn "No active web server detected (nginx / apache2)."
    warn "Blueprint may not function correctly without a web server."
    WEBSERVER="unknown"
    WEBUSER="www-data"
  fi
}

# ============================================================
# DETECT PANEL PATH
# ============================================================
detect_panel_path() {
  step "Detecting Pterodactyl Panel Path"
  PANEL_PATH=""
  COMMON_PATHS=("/var/www/pterodactyl" "/var/www/html/pterodactyl" "/srv/pterodactyl" "/opt/pterodactyl")

  for path in "${COMMON_PATHS[@]}"; do
    if [[ -f "$path/artisan" ]]; then
      PANEL_PATH="$path"
      success "Panel found at: ${BOLD}$PANEL_PATH${RESET}"
      break
    fi
  done

  if [[ -z "$PANEL_PATH" ]]; then
    warn "Could not auto-detect Pterodactyl panel path."
    read -rp "$(echo -e "${YELLOW}  Enter panel path (e.g. /var/www/pterodactyl): ${RESET}")" PANEL_PATH
    if [[ ! -f "$PANEL_PATH/artisan" ]]; then
      abort "Invalid panel path: $PANEL_PATH (artisan not found)"
    fi
    success "Panel path confirmed: $PANEL_PATH"
  fi

  export PTERODACTYL_DIRECTORY="$PANEL_PATH"
}

# ============================================================
# DETECT PHP VERSION
# ============================================================
detect_php() {
  step "Detecting PHP Version"
  PHP_BIN=$(which php 2>/dev/null)
  if [[ -z "$PHP_BIN" ]]; then
    abort "PHP is not installed or not in PATH."
  fi

  PHP_VER=$(php -r 'echo PHP_MAJOR_VERSION.".".PHP_MINOR_VERSION;')
  info "PHP Version: ${BOLD}$PHP_VER${RESET}"

  MAJOR=$(echo "$PHP_VER" | cut -d. -f1)
  MINOR=$(echo "$PHP_VER" | cut -d. -f2)

  if [[ "$MAJOR" -lt 8 ]]; then
    abort "Blueprint requires PHP 8.0+. Found: PHP $PHP_VER"
  elif [[ "$MAJOR" -eq 8 && "$MINOR" -lt 1 ]]; then
    warn "PHP 8.1+ is recommended. You are using PHP $PHP_VER."
  else
    success "PHP $PHP_VER meets requirements."
  fi
}

# ============================================================
# INSTALL ESSENTIAL DEPENDENCIES
# Based on official Blueprint docs: https://blueprint.zip/docs
# ============================================================
install_dependencies() {
  step "Installing Essential Dependencies"
  info "Packages required: ca-certificates curl git gnupg unzip wget zip tar"
  info "Updating apt package lists..."
  apt-get update -qq

  info "Installing base packages..."
  apt-get install -y -qq ca-certificates curl git gnupg unzip wget zip tar \
    && success "Base packages installed." \
    || warn "Some packages may have failed to install."

  # ---- Node.js 22.x via NodeSource (official requirement) ----
  step "Installing Node.js 22.x (via NodeSource â€” official requirement)"

  NODE_MAJOR=$(node -v 2>/dev/null | grep -oP 'v\K[0-9]+' | head -1)
  if [[ -n "$NODE_MAJOR" && "$NODE_MAJOR" -ge 18 ]]; then
    success "Node.js $(node -v) is already installed and meets requirements."
  else
    warn "Node.js not found or outdated. Installing Node.js 22.x..."
    mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
      | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" \
      | tee /etc/apt/sources.list.d/nodesource.list
    apt-get update -qq
    apt-get install -y nodejs \
      && success "Node.js $(node -v) installed successfully." \
      || abort "Failed to install Node.js."
  fi

  # ---- Yarn (official requirement) ----
  step "Installing Yarn (official requirement)"
  if command -v yarn &>/dev/null; then
    success "Yarn $(yarn -v) is already installed."
  else
    npm i -g yarn \
      && success "Yarn $(yarn -v) installed successfully." \
      || abort "Failed to install Yarn."
  fi

  # ---- Composer ----
  step "Checking Composer"
  if command -v composer &>/dev/null; then
    success "Composer is already installed: $(composer --version 2>&1 | head -1)"
  else
    info "Installing Composer..."
    curl -sS https://getcomposer.org/installer \
      | php -- --install-dir=/usr/local/bin --filename=composer \
      && success "Composer installed successfully." \
      || abort "Failed to install Composer."
  fi
}

# ============================================================
# INSTALL NODE MODULES (yarn install in panel directory)
# ============================================================
install_node_deps() {
  step "Installing Node Modules (yarn install)"
  cd "$PANEL_PATH" || abort "Cannot change directory to $PANEL_PATH"
  # Fix for Node.js 17+ OpenSSL compatibility with older Webpack builds
  export NODE_OPTIONS=--openssl-legacy-provider
  info "Running yarn install in $PANEL_PATH..."
  yarn install \
    && success "yarn install completed successfully." \
    || warn "yarn install completed with warnings. Continuing..."
}

# ============================================================
# DISK SPACE CHECK
# ============================================================
check_disk_space() {
  step "Checking Disk Space"
  AVAIL_MB=$(df -m "$PANEL_PATH" | awk 'NR==2 {print $4}')
  REQUIRED_MB=500

  info "Available: ${BOLD}${AVAIL_MB}MB${RESET} | Minimum recommended: ${REQUIRED_MB}MB"

  if [[ "$AVAIL_MB" -lt "$REQUIRED_MB" ]]; then
    warn "Low disk space! Available: ${AVAIL_MB}MB, Minimum: ${REQUIRED_MB}MB"
    confirm "Continue anyway?" || abort "Aborted. Please free up disk space and retry."
  else
    success "Disk space is sufficient."
  fi
}

# ============================================================
# DETECT PANEL VERSION & EXISTING BLUEPRINT
# ============================================================
detect_panel_version() {
  step "Checking Panel Status"

  COMPOSER_FILE="$PANEL_PATH/composer.json"
  if [[ -f "$COMPOSER_FILE" ]]; then
    PANEL_VER=$(grep -oP '"version":\s*"\K[^"]+' "$COMPOSER_FILE" 2>/dev/null | head -1)
    info "Panel version: ${BOLD}${PANEL_VER:-unknown}${RESET}"
  fi

  if [[ -f "$PANEL_PATH/blueprint.sh" ]]; then
    warn "An existing Blueprint installation was detected!"
    warn "This will OVERWRITE your current Blueprint installation."
    confirm "Continue and overwrite?" || abort "Installation aborted by user."
  fi
}

# ============================================================
# BACKUP PROMPT
# ============================================================
prompt_backup() {
  step "Backup Recommendation"
  warn "Blueprint modifies core Pterodactyl panel files!"
  warn "It is STRONGLY recommended to back up your panel before proceeding."
  echo ""
  info "Suggested backup command:"
  echo -e "  ${CYAN}tar -czf /root/ptero_backup_\$(date +%Y%m%d_%H%M%S).tar.gz $PANEL_PATH${RESET}"
  echo ""
  confirm "Continue installation (backup done or skip)?" || abort "Aborted. Please back up your panel first."
}

# ============================================================
# DOWNLOAD BLUEPRINT (official method: wget release.zip)
# ============================================================
download_blueprint() {
  step "Downloading Latest Blueprint Release"

  info "Fetching latest release info from GitHub API..."
  RELEASE_JSON=$(curl -s "https://api.github.com/repos/BlueprintFramework/framework/releases/latest")
  BL_TAG=$(echo "$RELEASE_JSON" | grep '"tag_name"' | cut -d'"' -f4 | head -1)
  BL_URL=$(echo "$RELEASE_JSON" | grep "browser_download_url" | grep "release\.zip" | cut -d'"' -f4 | head -1)

  if [[ -z "$BL_URL" ]]; then
    warn "Could not fetch release URL from API. Using official fallback URL..."
    BL_URL="https://github.com/BlueprintFramework/framework/releases/latest/download/release.zip"
  fi

  info "Release Tag : ${BOLD}${BL_TAG:-latest}${RESET}"
  info "Download URL: ${BOLD}$BL_URL${RESET}"

  cd "$PANEL_PATH" || abort "Cannot change directory to $PANEL_PATH"

  info "Downloading release.zip to $PANEL_PATH/release.zip..."
  wget -q --show-progress "$BL_URL" -O "$PANEL_PATH/release.zip" \
    && success "Download completed successfully." \
    || abort "Download failed. Check your internet connection."
}

# ============================================================
# EXTRACT BLUEPRINT
# ============================================================
extract_blueprint() {
  step "Extracting Blueprint"
  cd "$PANEL_PATH" || abort "Cannot change directory to $PANEL_PATH"

  info "Extracting release.zip..."
  unzip -o release.zip \
    && success "Extraction completed." \
    || abort "Failed to extract release.zip."

  info "Removing release.zip..."
  rm -f release.zip
  success "Cleanup done."
}

# ============================================================
# CONFIGURE .blueprintrc (official required step)
# ============================================================
configure_blueprintrc() {
  step "Configuring .blueprintrc"

  BLUEPRINTRC="$PANEL_PATH/.blueprintrc"

  if [[ -f "$BLUEPRINTRC" ]]; then
    info ".blueprintrc already exists. Skipping creation."
  else
    info "Creating $BLUEPRINTRC with standard Debian-based configuration..."
    # Standard config per official Blueprint documentation
    echo 'WEBUSER="www-data"; OWNERSHIP="www-data:www-data"; USERSHELL="/bin/bash";' > "$BLUEPRINTRC"
    success ".blueprintrc created successfully."
  fi

  info "Current .blueprintrc contents:"
  echo -e "  ${CYAN}$(cat "$BLUEPRINTRC")${RESET}"
}

# ============================================================
# RUN BLUEPRINT SETUP SCRIPT (official final step)
# ============================================================
run_blueprint() {
  step "Running Blueprint Setup (blueprint.sh)"

  cd "$PANEL_PATH" || abort "Cannot change directory to $PANEL_PATH"

  if [[ ! -f "blueprint.sh" ]]; then
    abort "blueprint.sh not found in $PANEL_PATH. Extraction may have failed."
  fi

  info "Setting execute permissions on blueprint.sh..."
  chmod +x blueprint.sh

  info "Running blueprint.sh..."
  export NODE_OPTIONS=--openssl-legacy-provider
  bash blueprint.sh \
    && success "Blueprint setup completed successfully." \
    || warn "Blueprint setup finished with warnings. Review the output above."
}

# ============================================================
# SET FILE PERMISSIONS
# ============================================================
set_permissions() {
  step "Setting File Permissions"
  chown -R www-data:www-data "$PANEL_PATH" 2>/dev/null \
    || chown -R nginx:nginx "$PANEL_PATH" 2>/dev/null \
    || warn "Could not set file ownership. Please set permissions manually."
  chmod -R 755 "$PANEL_PATH/storage" "$PANEL_PATH/bootstrap/cache" 2>/dev/null
  success "File permissions set."
}

# ============================================================
# BASH AUTOCOMPLETION (optional â€” per official docs)
# ============================================================
setup_autocompletion() {
  step "Setting Up Bash Autocompletion (Optional)"
  if ! grep -q "source blueprint;" ~/.bashrc 2>/dev/null; then
    echo "source blueprint;" >> ~/.bashrc
    success "Blueprint autocompletion added to ~/.bashrc"
    info "Run 'source ~/.bashrc' to activate it in the current session."
  else
    success "Blueprint autocompletion is already configured in ~/.bashrc"
  fi
}

# ============================================================
# RELOAD WEBSERVER
# ============================================================
reload_webserver() {
  step "Reloading Web Server"
  case "$WEBSERVER" in
    nginx)
      if nginx -t 2>/dev/null; then
        systemctl reload nginx \
          && success "Nginx reloaded successfully." \
          || warn "Nginx reload failed. Check your configuration."
      else
        warn "Nginx configuration test failed. Skipping reload."
      fi
      ;;
    apache2)
      if apachectl configtest 2>/dev/null; then
        systemctl reload apache2 \
          && success "Apache2 reloaded successfully." \
          || warn "Apache2 reload failed."
      else
        warn "Apache2 configuration test failed. Skipping reload."
      fi
      ;;
    *)
      warn "Unknown web server. Please reload it manually."
      ;;
  esac
}

# ============================================================
# PRINT SUMMARY
# ============================================================
print_summary() {
  echo ""
  echo -e "${CYAN}â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”${RESET}"
  echo -e "${GREEN}${BOLD}  ${CHECK}  BLUEPRINT INSTALLATION COMPLETE!${RESET}"
  echo -e "${CYAN}â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”${RESET}"
  echo ""
  echo -e "  ${CYAN}Panel Path  :${RESET} ${BOLD}$PANEL_PATH${RESET}"
  echo -e "  ${CYAN}PHP Version :${RESET} ${BOLD}$PHP_VER${RESET}"
  echo -e "  ${CYAN}Node.js     :${RESET} ${BOLD}$(node -v 2>/dev/null || echo 'n/a')${RESET}"
  echo -e "  ${CYAN}Yarn        :${RESET} ${BOLD}$(yarn -v 2>/dev/null || echo 'n/a')${RESET}"
  echo -e "  ${CYAN}Web Server  :${RESET} ${BOLD}$WEBSERVER${RESET}"
  echo -e "  ${CYAN}OS          :${RESET} ${BOLD}$OS_PRETTY${RESET}"
  echo ""
  echo -e "  ${YELLOW}${WARN}  Next Steps:${RESET}"
  echo -e "  ${ARROW} Log in to your Pterodactyl panel as an administrator."
  echo -e "  ${ARROW} The Blueprint menu will appear in your admin sidebar."
  echo -e "  ${ARROW} Browse extensions: ${CYAN}https://blueprint.zip/browse${RESET}"
  echo -e "  ${ARROW} Documentation    : ${CYAN}https://blueprint.zip/docs${RESET}"
  echo -e "  ${ARROW} Activate autocomplete: run ${CYAN}source ~/.bashrc${RESET}"
  echo ""
  echo -e "${CYAN}â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”${RESET}"
  echo ""
}

# ============================================================
# MAIN
# ============================================================
main() {
  print_banner
  check_root
  detect_os
  detect_webserver
  detect_panel_path
  detect_php
  install_dependencies
  install_node_deps
  check_disk_space
  detect_panel_version
  prompt_backup
  download_blueprint
  extract_blueprint
  configure_blueprintrc
  run_blueprint
  set_permissions
  setup_autocompletion
  reload_webserver
  print_summary
}

main "$@"
