#!/bin/bash

source ~/EWD/Scripts/Core.sh

echo -e "${Green}Updating EWD...${NC}"
cd $ROOT_FOLDER
git pull
echo -e "${Green}You can now run EWD fully updated${NC}"
exit 0