# /srv/salt/nginx_dir/configure_nginx.sls 
configure_nginx: 
  file.managed:
    - name: /var/www/html/index.html 
    - contents: "We are learning Automation with SaltStack by Thinknyx Technologies LLP and this is our third demo for Top file with multiple state files included in init.sls"

