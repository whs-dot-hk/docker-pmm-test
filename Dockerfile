FROM percona/pmm-server:2.33.0

COPY victoriametrics.conf /etc/nginx/conf.d/
