#!/bin/bash

source ~/.bashrc
source ~/EWD/Scripts/Core.sh

#!/bin/bash

# This script takes user input to create a simple HTML website

read -p "Enter the website title: " title
read -p "Enter the description: " description
read -p "Enter the image URL: " image_url
read -p "Enter the footer text: " footer

# Ask for 5 links
declare -a links
declare -a link_texts
for i in {1..5}; do
    read -p "Enter the URL for link $i: " links[$i]
    read -p "Enter the text for link $i: " link_texts[$i]
done

# Generate the HTML content
cat > $DOCKERFILE_DIR/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>\$title</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        footer { margin-top: 20px; padding: 10px; background-color: #f0f0f0; }
    </style>
</head>
<body>
    <h1>\$title</h1>
    <p>\$description</p>
    <img src="\$image_url" alt="Image" style="max-width: 100%;">
    <ul>
        <li><a href="\${links[1]}">\${link_texts[1]}</a></li>
        <li><a href="\${links[2]}">\${link_texts[2]}</a></li>
        <li><a href="\${links[3]}">\${link_texts[3]}</a></li>
        <li><a href="\${links[4]}">\${link_texts[4]}</a></li>
        <li><a href="\${links[5]}">\${link_texts[5]}</a></li>
    </ul>
    <footer>\$footer</footer>
</body>
</html>
EOF

echo -e "${Green}The website has been generated as index.html${NC}"
echo -e "${Green}Building docker image...${NC}"

bash $ROOT_FOLDER/$SCRIPT_FOLDER/Build.sh