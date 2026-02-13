#!/bin/bash
RED='\033[0;31m'; G='\033[1;32m'; W='\033[1;37m'; B='\033[1;34m'; Y='\033[1;33m'; C='\033[0;36m'; NC='\033[0m'
BG_RED='\033[41m'; WHITE_B='\033[1;37m'

header() {
    clear
    echo -e "${RED}      ███████╗ ██████╗ ██████╗  ██████╗  ██████╗ ${NC}"
    echo -e "${RED}      ╚══███╔╝██╔═══██╗██╔══██╗██╔════╝ ██╔═══██╗${NC}"
    echo -e "${RED}        ███╔╝ ██║   ██║██████╔╝██║  ███╗██║   ██║${NC}"
    echo -e "${RED}       ███╔╝  ██║   ██║██╔══██╗██║   ██║██║   ██║${NC}"
    echo -e "${RED}      ███████╗╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝${NC}"
    echo -e "${RED}      ╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ${NC}"
    echo -e "  ${BG_RED}${WHITE_B}  >>> ZORGO C2 INFRASTRUCTURE - THE APOCALYPSE <<<  ${NC}"
    echo -e "  ${Y}STATUS: ONLINE ${G}● ${W}| BOTS: ${RED}142,892 ${W}| POWER: ${G}MAX${NC}"
    echo -e "${RED}─────────────────────────────────────────────────────────────────${NC}"
}

l7_methods() {
    echo -e "${B}[ LAYER 7 - METHODS ]${NC}"
    echo -e " 01. HTTPS-FLOOD    02. HTTPS-ROSETTA   03. HTTPS-KILL"
    echo -e " 04. CF-BYPASS      05. HTTP-RAW        06. BROWSER-ENGINE"
    echo -e " 07. POST-STORM     08. SLOW-ATTRITION  09. HEAD-RECK"
    echo -e " 10. XML-RPC-DOOM"
    echo -e "${RED}-----------------------------------------------------------------${NC}"
}

l4_methods() {
    echo -e "${Y}[ LAYER 4 - METHODS ]${NC}"
    echo -e " 11. TCP-KILL       12. UDP-FLOOD       13. SYN-STORM"
    echo -e " 14. VSE-FLOOD      15. ICMP-ECHO       16. NTP-AMP"
    echo -e " 17. DNS-REFLECT    18. MEMCACHED-HIT   19. OVH-BYPASS"
    echo -e " 20. GAME-PORT-OFF"
    echo -e "${RED}─────────────────────────────────────────────────────────────────${NC}"
}

# --- [ OPERASYON BAŞLATICI ] ---
attack() {
    echo -n -e "${W}Hedef URL/IP: ${NC}"; read target
    echo -n -e "${W}Saniye: ${NC}"; read dur
    header
    echo -e "${RED}[!] SALDIRI AKTİF EDİLDİ: $target${NC}"
    # Go motorunu derlenmiş dosyadan tetikle
    ./zorgo_engine -u "$target" -t "$dur" &
    echo -e "${G}[✓] Paketler saniyede milyonlarca PPS ile gönderiliyor...${NC}"
    sleep 3
}

while true; do
    header
    l7_methods
    l4_methods
    echo -n -e "${G}ZORGO-C2@SYSTEM${NC}:${RED}~/Strike# ${NC}"; read cmd
    case $cmd in
        [0-9]*) attack ;;
        *) echo -e "${RED}Geçersiz Metot!${NC}"; sleep 1 ;;
    esac
done
