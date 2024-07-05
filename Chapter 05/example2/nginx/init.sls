# Install nginx package
install_nginx_package:
   pkg.installed:
      - name: nginx
      
# Configure nginx
configure_nginx:
   file.managed:
     - name: /var/www/html/index.html
     - contents: "We are learning Automation with SaltStack by Thinknyx Technologies LLP and this is our second demo for Top file with init.sls"

# Ensure nginx service is running and set to start on boot
start_nginx:
   service.running:
     - name: nginx
     - enable: True

