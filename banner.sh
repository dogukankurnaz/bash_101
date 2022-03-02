#!/bin/bash
RED='\e[1;91m'
VER='0.1.1'
resetStyle='\e[0m'
function logo {
cat <<'EOF'
______            _                _     _                  
| ___ \          | |              | |   (_)                 
| |_/ / __ _  ___| | ___   _ _ __ | |    _ _ __  _   ___  __
| ___ \/ _` |/ __| |/ / | | | '_ \| |   | | '_ \| | | \ \/ /
| |_/ / (_| | (__|   <| |_| | |_) | |___| | | | | |_| |>  < 
\____/ \__,_|\___|_|\_\\__,_| .__/\_____/_|_| |_|\__,_/_/\_\
                            | |                             
                            |_|                             
EOF
echo ""
echo -e "${RED}+ -- --=[BackupLinux v$VER by @dogukankurnaz"
echo -e "${RED}+ -- --=[https://github.com/dogukankurnaz"
echo ""
}

logo