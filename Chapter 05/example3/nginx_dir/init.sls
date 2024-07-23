# /srv/salt/nginx_dir/init.sls 
include:
  - nginx_dir.install_nginx
  - nginx_dir.configure_nginx
  - nginx_dir.start_nginx 

