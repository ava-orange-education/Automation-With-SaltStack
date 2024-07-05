# /srv/salt/nginx_dir/install_nginx.sls
install_nginx:
  pkg.installed:
    - name: nginx 
