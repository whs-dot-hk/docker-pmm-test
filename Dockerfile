FROM percona/pmm-server:2.33.0

RUN cp /etc/supervisord.d/pmm.ini .

RUN rm -rf /etc/supervisord.d/

RUN mkdir -p /etc/supervisord.d/

RUN mv pmm.ini /etc/supervisord.d/

COPY pmm-managed /usr/sbin/pmm-managed
