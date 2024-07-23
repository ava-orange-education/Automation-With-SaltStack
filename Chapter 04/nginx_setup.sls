# /srv/salt/nginx_setup.sls
install_nginx:
   pkg.installed:
     - name: nginx

configure_nginx:
   file.managed:
     - name: /var/www/html/index.html
     - contents: 
            - "We are learning Automation with SaltStack by Thinknyx Technologies LLP"

start_nginx:
   service.running:
      - name: nginx
      - enable: True

