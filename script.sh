#!/bin/bash
sudo apt update 
sudo apt upgrade -y 
sudo apt install nginx -y

# Get the host's IP address (assuming eth0 interface or adjust as needed)
HOST_IP=$(hostname -I | awk '{print $1}')

# Path to the index.html file
HTML_FILE="/var/www/html/index.html"

# Create the HTML content
echo "<html>
<head>
    <title>Host IP</title>
</head>
<body>
    <h1>The IP address of the host is: $HOST_IP</h1>
</body>
</html>" > $HTML_FILE

# Set appropriate permissions
chmod 644 $HTML_FILE

echo "index.html created with IP address $HOST_IP"

