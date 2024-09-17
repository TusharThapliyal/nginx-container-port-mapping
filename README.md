# Using Nginx as a Load Balancer
## Setup
you will need at least three VM on cloud. Two of them will be used as target web servers and one will be used as a load balancer server. You will need nginx in all three of VMs.


## Installation
scrpt.sh can be used as a user-data script if you are using AWS EC2 instances. Else just copy these scripts on you servers and follow below steps.
```bash
chmod +x script.sh 
```
you need to run this script with sudo as you are going to edit the index.html file in a protected directory /var/www/html
```bash
sudo bash script.sh
```
## Usage
replace the content in /etc/nginx/site-available/default file with default file provided in repo.
