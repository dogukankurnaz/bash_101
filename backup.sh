#!/bin/bash

RED='\e[1;91m'
VER='0.1.1'
resetStyle='\e[0m'

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

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
echo -e "${RED}+ -- --=[Welcome $user :)"
echo -e "${RED}+ -- --=[BackupLinux v$VER by @dogukankurnaz"
echo -e "${RED}+ -- --=[https://github.com/dogukankurnaz"
echo ""
}

logo

function total_files {
        find $1 -type f | wc -l
}

function total_directories {
        find $1 -type d | wc -l
}

function total_archived_directories {
        tar -tzf $1 | grep  /$ | wc -l
}

function total_archived_files {
        tar -tzf $1 | grep -v /$ | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"
echo "Backup of $input completed!"
echo "Details about the output backup file:"
ls -l $output
