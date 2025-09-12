### Task 1: Apache Basics (Backend Only) 

# Steps

Step 1 — Install & Start Apache:

sudo apt update -y
sudo apt install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2


Step 2 — Replace the default homepage: 

sudo nano /var/www/html/index.html
 # Add this HTML then save:
 <h1>Hello from Apache</h1>


Step 3 — Move Apache to port 8080:

 sudo nano /etc/apache2/ports.conf
 # Change or add:
 Listen 8080
 sudo nano /etc/apache2/sites-available/000-default.conf
 # Change the first line to:
 <VirtualHost *:8080>
 sudo systemctl restart apache2


Verify:Open http://localhost:8080 → you should see the Apache page

### Task 2: Nginx Basics (Frontend)

# Steps
Step 1 — Install & Start Nginx:

 sudo apt install -y nginx
 sudo systemctl enable nginx
 sudo systemctl start nginx


Step 2 — Change the homepage to confirm Nginx is active:

 sudo nano /var/www/html/index.html
 # Replace content with:
 <h1>Hello from Nginx</h1>

Verify:  Open http://localhost → you should see the Nginx page.


### Task 3: Nginx Reverse Proxy to Apache

# Steps

Step 1 — Create the Nginx proxy site:


sudo nano /etc/nginx/sites-available/proxy.conf

server {
  listen 80;
  location / {
    proxy_pass http://127.0.0.1:8080;
  }
}


Step 2 — Enable the site and reload Nginx:

 sudo rm -f /etc/nginx/sites-enabled/default
 sudo ln -s /etc/nginx/sites-available/proxy.conf /etc/nginx/sites-enabled/
 sudo nginx -t
 sudo systemctl reload nginx


Verify: Open http://localhost

### Task 4: Virtual Hosting on Nginx

# Steps

Step 1 — Create a site folder & homepage:

sudo mkdir -p /var/www/demo
 sudo nano /var/www/demo/index.html
 # Put some HTML, e.g.:
 <h1>Demo Site on Nginx</h1>


Step 2 — Create the site config:

sudo nano /etc/nginx/sites-available/demo.conf
 
server {
    listen 80;
    server_name demo.local;
    root /var/www/demo;
    index index.html;
}

Step 3 — Enable site, add hosts entry, and reload:


 sudo ln -s /etc/nginx/sites-available/demo.conf /etc/nginx/sites-enabled/

 sudo nano /etc/hosts

 # Add this line at the end:
 127.0.0.1   demo.local

 sudo nginx -t

 sudo systemctl reload nginx


Verify: Open http://demo.local 


### Task 5: Basic Load Balancing with Nginx (Bonus)

# steps

Step 1 — Prepare two different backend pages:

 sudo nano /var/www/html/index.html

 <h1>Hello from Apache1</h1>

Step 2 — Configure an upstream and proxy to it:

sudo nano /etc/nginx/sites-available/loadbalance.conf

upstream backend {
    server 127.0.0.1:8080;
    # server 127.0.0.1:8081;  # add a second backend if created
}

server {
    listen 80;
    location / {
        proxy_pass http://backend;
    }
}


Step 3 — Enable and reload:

 sudo ln -s /etc/nginx/sites-available/loadbalance.conf /etc/nginx/sites-enabled/
 
 sudo nginx -t
 
 sudo systemctl reload nginx


Verify: Refresh the page multiple times

### Troubleshooting & Useful Commands

sudo nginx -t                          # Validate Nginx config
journalctl -u nginx -n 50             # View recent Nginx logs
journalctl -u apache2 -n 50           # View recent Apache logs
sudo lsof -i :80 | grep LISTEN        # Check process on port 80
sudo lsof -i :8080 | grep LISTEN      # Check process on port 8080

### Learning From These Tasks

# Task 1: Apache as Backend (Port 8080)

1.How to install and configure Apache on Ubuntu
2.How to change default ports and virtual host settings
3.How to serve static content and verify backend availability

# Task 2: Nginx as Frontend (Port 80)

1.How to install and configure Nginx
2.How to serve static content from Nginx
3.How to verify Nginx is running and accessible on port 80

# Task 3: Nginx Reverse Proxy to Apache

1.How to configure Nginx as a reverse proxy
2.How to forward client requests from Nginx to Apache
3.How to manage site configurations and symbolic links in Nginx

# Task 4: Virtual Hosting with Nginx

1.How to host multiple websites using server_name
2.How to create isolated site folders and configs
3.How to map domain names locally using /etc/hosts

# Task 5: Basic Load Balancing with Nginx

1.How to define upstream servers in Nginx
2.How to distribute traffic between multiple Apache backends
3.How to test and verify load balancing
