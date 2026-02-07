#!/bin/bash

# ===============================
#        DragonCloud HOSTING MANAGER
# ===============================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m'

# ===============================
# ASCII BANNERS
# ===============================
zass_banner_big() {
echo -e "${CYAN}"
cat <<'EOF'
██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗ ██████╗██╗      ██████╗ ██╗   ██╗██████╗ 
██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║██╔════╝██║     ██╔═══██╗██║   ██║██╔══██╗
██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║██║     ██║     ██║   ██║██║   ██║██║  ██║
██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║██║     ██║     ██║   ██║██║   ██║██║  ██║
██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║╚██████╗███████╗╚██████╔╝╚██████╔╝██████╔╝
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝ 
                              ⚡ D R A G O N - C L O U D ⚡
============================================================================================
EOF
echo -e "${NC}"
}

zass_banner_small() {
echo -e "${RED}${BOLD}⚡ DRAGONCLOUD — Quality Wise, No Compromise ⚡${NC}"
}

print_header_rule() {
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

print_status() { echo -e "${YELLOW}⏳ $1...${NC}"; }
print_success() { echo -e "${GREEN}✅ $1${NC}"; }
print_error() { echo -e "${RED}❌ $1${NC}"; }

# ===============================
# Curl check
# ===============================
check_curl() {
if ! command -v curl &>/dev/null; then
    print_status "Installing curl"
    apt-get update -y && apt-get install -y curl
fi
}

# ===============================
# Run Remote Script
# ===============================
run_remote_script() {
local url=$1
clear
zass_banner_big
print_header_rule
zass_banner_small
print_header_rule

check_curl
tmp=$(mktemp)

print_status "Downloading script"
if curl -fsSL "$url" -o "$tmp"; then
    chmod +x "$tmp"
    bash "$tmp"
    rm -f "$tmp"
    print_success "Task completed"
else
    print_error "Download failed"
fi

read -p "$(echo -e "${YELLOW}Press Enter to continue...${NC}")"
}

# ===============================
# System Info
# ===============================
system_info() {
clear
zass_banner_big
print_header_rule
echo -e "${WHITE}Hostname : ${GREEN}$(hostname)${NC}"
echo -e "${WHITE}User     : ${GREEN}$(whoami)${NC}"
echo -e "${WHITE}System   : ${GREEN}$(uname -srm)${NC}"
echo -e "${WHITE}Uptime   : ${GREEN}$(uptime -p)${NC}"
echo -e "${WHITE}Memory   : ${GREEN}$(free -h | awk '/Mem:/ {print $3 "/" $2}')${NC}"
echo -e "${WHITE}Disk     : ${GREEN}$(df -h / | awk 'NR==2 {print $3 "/" $2}')${NC}"
read -p "$(echo -e "${YELLOW}Press Enter to continue...${NC}")"
}

# ===============================
# Main Menu
# ===============================
show_menu() {
clear
zass_banner_big
print_header_rule

echo -e "${WHITE}${BOLD} 1)${NC} Panel Installation"
echo -e "${WHITE}${BOLD} 2)${NC} Wings Installation"
echo -e "${WHITE}${BOLD} 3)${NC} Uninstall Tools"
echo -e "${WHITE}${BOLD} 4)${NC} Blueprint & Extras (Coming Soon)"
echo -e "${WHITE}${BOLD} 5)${NC} Cloudflare Setup"
echo -e "${WHITE}${BOLD} 6)${NC} System Information"
echo -e "${WHITE}${BOLD} 7)${NC} Tmate Setup"
echo -e "${WHITE}${BOLD} 8)${NC} Tailscale Setup"
echo -e "${WHITE}${BOLD} 9)${NC} Database Setup"
echo -e "${WHITE}${BOLD} 0)${NC} ${RED}Exit${NC}"

print_header_rule
echo -ne "${YELLOW}Select an option [0-9]: ${NC}"
}

# ===============================
# Start
# ===============================
while true; do
show_menu
read -r choice
case $choice in
    1) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/panel.sh" ;;
    2) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/wings.sh" ;;
    3) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/uninstall.sh" ;;
    5) run_remote_script "https://raw.githubusercontent.com/JishnuTheGamer/Vps/refs/heads/main/cd/cloudflare.sh" ;;
    6) system_info ;;
    7) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/tmate.sh" ;;
    8) run_remote_script "https://raw.githubusercontent.com/nobita329/The-Coding-Hub/refs/heads/main/srv/tools/Tailscale.sh" ;;
    9) echo -e "${GREEN}Database setup already included${NC}" ;;
    0) clear; zass_banner_big; echo -e "${GREEN}Thanks for using DragonCloud${NC}"; exit 0 ;;
    *) print_error "Invalid option" ;;
esac
done
