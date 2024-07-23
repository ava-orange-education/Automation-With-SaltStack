# /srv/salt/nginx_setup.sls
configure_nginx:
  file.managed:
    - name: /etc/nginx/sites-enabled/default
    - source: salt://requisitenginx/default
    - require:
      - pkg: install_nginx

install_nginx:
   pkg.installed:
     - name: nginx

configure_nginxfile:
   file.managed:
     - name: /var/www/html/index.html
     - contents: 
            - "We are learning Automation with SaltStack by Thinknyx Technologies LLP"

restart_nginx:
  service.running:
    - name: nginx
    - watch:
      - file: configure_nginx

