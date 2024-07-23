# /srv/salt/nginx_dir/start_nginx.sls
start_nginx: 
   service.running: 
      - name: nginx 
      - enable: True 

