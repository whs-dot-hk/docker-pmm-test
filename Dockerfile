FROM percona/pmm-server:2.33.0

COPY pmm-managed /usr/sbin/pmm-managed

RUN rm -rf /etc/supervisord.d/

RUN mkdir -p /etc/supervisord.d/

COPY pmm.ini /etc/supervisord.d/

