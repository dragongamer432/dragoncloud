#!/bin/bash

# ===============================
#        DragonCloud HOSTING MANAGER
# ===============================

# Colors for output - RED THEME
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# ===============================
# DragonCloud HOSTING ASCII BANNERS
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

# Function to print section headers
print_header_rule() {
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

# Big ASCII header selector
big_header() {
    local title="$1"
    echo -e "${RED}"
    case "$title" in
        "MAIN MENU")
cat <<'EOF'
$$$$$$$\                                                    $$$$$$\  $$\                           $$\ 
$$  __$$\                                                  $$  __$$\ $$ |                          $$ |
$$ |  $$ | $$$$$$\  $$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\  $$ /  \__|$$ | $$$$$$\  $$\   $$\  $$$$$$$ |
$$ |  $$ |$$  __$$\ \____$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$ |      $$ |$$  __$$\ $$ |  $$ |$$  __$$ |
$$ |  $$ |$$ |  \__|$$$$$$$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |$$ |      $$ |$$ /  $$ |$$ |  $$ |$$ /  $$ |
$$ |  $$ |$$ |     $$  __$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$\ $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |
$$$$$$$  |$$ |     \$$$$$$$ |\$$$$$$$ |\$$$$$$  |$$ |  $$ |\$$$$$$  |$$ |\$$$$$$  |\$$$$$$  |\$$$$$$$ |
\_______/ \__|      \_______| \____$$ | \______/ \__|  \__| \______/ \__| \______/  \______/  \_______|
                             $$\   $$ |                                                                
                             \$$$$$$  |                                                                
                              \______/                                                                 
            $$\      $$\                                                                               
            $$$\    $$$ |                                                                              
            $$$$\  $$$$ | $$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\                    
            $$\$$\$$ $$ | \____$$\ $$  __$$\  \____$$\ $$  __$$\ $$  __$$\ $$  __$$\                   
            $$ \$$$  $$ | $$$$$$$ |$$ |  $$ | $$$$$$$ |$$ /  $$ |$$$$$$$$ |$$ |  \__|                  
            $$ |\$  /$$ |$$  __$$ |$$ |  $$ |$$  __$$ |$$ |  $$ |$$   ____|$$ |                        
            $$ | \_/ $$ |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |\$$$$$$$ |\$$$$$$$\ $$ |                        
            \__|     \__| \_______|\__|  \__| \_______| \____$$ | \_______|\__|                        
                                                       $$\   $$ |                                      
                                                       \$$$$$$  |                                      
                                                        \______/                                      
EOF
            ;;
        "SYSTEM INFORMATION")
cat <<'EOF'
 .d8888b.                    888                               8888888           .d888         
d88P  Y88b                   888                                 888            d88P"          
Y88b.                        888                                 888            888            
 "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.         888   88888b.  888888 .d88b.  
    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b        888   888 "88b 888   d88""88b 
      "888 888  888 "Y8888b. 888   88888888 888  888  888        888   888  888 888   888  888 
Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888        888   888  888 888   Y88..88P 
 "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888      8888888 888  888 888    "Y88P"  
                888                                                                            
           Y8b d88P                                                                            
            "Y88P"                                                                             
EOF
            ;;
        "DATABASE SETUP")
cat <<'EOF'
8888888b.           888             888                                       .d8888b.           888                      
888  "Y88b          888             888                                      d88P  Y88b          888                      
888    888          888             888                                      Y88b.               888                      
888    888  8888b.  888888  8888b.  88888b.   8888b.  .d8888b   .d88b.        "Y888b.    .d88b.  888888 888  888 88888b.  
888    888     "88b 888        "88b 888 "88b     "88b 88K      d8P  Y8b          "Y88b. d8P  Y8b 888    888  888 888 "88b 
888    888 .d888888 888    .d888888 888  888 .d888888 "Y8888b. 88888888            "888 88888888 888    888  888 888  888 
888  .d88P 888  888 Y88b.  888  888 888 d88P 888  888      X88 Y8b.          Y88b  d88P Y8b.     Y88b.  Y88b 888 888 d88P 
8888888P"  "Y888888  "Y888 "Y888888 88888P"  "Y888888  88888P'  "Y8888        "Y8888P"   "Y8888   "Y888  "Y88888 88888P"  
                                                                                                                 888      
                                                                                                                 888      
                                                                                                                 888     
EOF
            ;;
        *)
            echo -e "${BOLD}${title}${NC}"
            ;;
    esac
    echo -e "${NC}"
}

# Status helpers
print_status() { echo -e "${YELLOW}⏳ $1...${NC}"; }
print_success() { echo -e "${GREEN}✅ $1${NC}"; }
print_error() { echo -e "${RED}❌ $1${NC}"; }
print_warning() { echo -e "${MAGENTA}⚠️  $1${NC}"; }

# Curl check
check_curl() {
    if ! command -v curl &>/dev/null; then
        print_error "curl is not installed"
        print_status "Installing curl"
        if command -v apt-get &>/dev/null; then
            sudo apt-get update && sudo apt-get install -y curl
        elif command -v yum &>/dev/null; then
            sudo yum install -y curl
        elif command -v dnf &>/dev/null; then
            sudo dnf install -y curl
        else
            print_error "Install curl manually"
            exit 1
        fi
        print_success "curl installed"
    fi
}

# Run remote scripts
run_remote_script() {
    local url=$1

    clear
    zass_banner_big
    print_header_rule
    zass_banner_small
    print_header_rule

    check_curl
    temp_script=$(mktemp)

    print_status "Downloading script"
    if curl -fsSL "$url" -o "$temp_script"; then
        chmod +x "$temp_script"
        bash "$temp_script"
        rm -f "$temp_script"
        print_success "Task completed"
    else
        print_error "Download failed"
    fi

    echo ""
    read -p "$(echo -e "${YELLOW}Press Enter to continue...${NC}")"
}

# System Info
system_info() {
    clear
    zass_banner_big
    print_header_rule
    big_header "SYSTEM INFORMATION"
    print_header_rule

    echo -e "${WHITE}Hostname : ${GREEN}$(hostname)${NC}"
    echo -e "${WHITE}User     : ${GREEN}$(whoami)${NC}"
    echo -e "${WHITE}System   : ${GREEN}$(uname -srm)${NC}"
    echo -e "${WHITE}Uptime   : ${GREEN}$(uptime -p)${NC}"
    echo -e "${WHITE}Memory   : ${GREEN}$(free -h | awk '/Mem:/ {print $3 "/" $2}')${NC}"
    echo -e "${WHITE}Disk     : ${GREEN}$(df -h / | awk 'NR==2 {print $3 "/" $2}')${NC}"

    echo ""
    read -p "$(echo -e "${YELLOW}Press Enter to continue...${NC}")"
}

# Welcome animation
welcome_animation() {
    clear
    zass_banner_big
    sleep 1
}

# Main menu
show_menu() {
    clear
    zass_banner_big
    print_header_rule
    big_header "MAIN MENU"
    print_header_rule

echo -e "${WHITE}${BOLD} 1)${NC} ${WHITE}Panel Installation${NC}"
echo -e "${WHITE}${BOLD} 2)${NC} ${WHITE}Wings Installation${NC}"
echo -e "${WHITE}${BOLD} 3)${NC} ${WHITE}Uninstall Tools${NC}"
echo -e "${WHITE}${BOLD} 4)${NC} ${WHITE}Blueprint & Extras (ComingSoon)${NC}"
echo -e "${WHITE}${BOLD} 5)${NC} ${WHITE}Cloudflare Setup${NC}"
echo -e "${WHITE}${BOLD} 6)${NC} ${WHITE}System Information${NC}"
echo -e "${WHITE}${BOLD} 7)${NC} ${WHITE}Tmate Setup${NC}"
echo -e "${WHITE}${BOLD} 8)${NC} ${WHITE}Tailscale Setup${NC}"
echo -e "${WHITE}${BOLD} 9)${NC} ${WHITE}Database Setup${NC}"
echo -e "${WHITE}${BOLD} 0)${NC} ${RED}Exit${NC}"


    print_header_rule
    echo -ne "${YELLOW}Select an option [0-8]: ${NC}"
}

# ===============================
# Main Loop
# ===============================
welcome_animation

while true; do
    show_menu
    read -r choice
    case $choice in
        1) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/panel.sh" ;;
        2) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/wings.sh" ;;
        3) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/uninstall.sh" ;;
        4) blueprint_theme_menu ;;
        5) run_remote_script "https://raw.githubusercontent.com/JishnuTheGamer/Vps/refs/heads/main/cd/cloudflare.sh" ;;
        6) system_info ;;
        7) run_remote_script "https://raw.githubusercontent.com/dragongamer432/pteropanel/refs/heads/main/tmate.sh" ;;
        8) run_remote_script "https://raw.githubusercontent.com/nobita329/The-Coding-Hub/refs/heads/main/srv/tools/Tailscale.sh" ;;
        9) echo -e "${RED}Database setup already included${NC}" ;;
        0)
            clear
            zass_banner_big
            echo -e "${GREEN}Thank you for using DragonCloud${NC}"
            sleep 1
            exit 0
            ;;
        *) print_error "Invalid option" ;;
    esac
done
