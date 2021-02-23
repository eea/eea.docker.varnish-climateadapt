FROM eeacms/varnish:4.1-6.4
LABEL maintainer="European Environment Agency (EEA)"

ENV CACHE_SIZE="2G" \
    PARAM_VALUE="-p thread_pools=8 -p thread_pool_timeout=120 -p thread_pool_add_delay=0.002 -p ban_lurker_sleep=0.1 -p send_timeout=3600" \
    BACKENDS="haproxy" \
    BACKENDS_PORT="5000" \
    BACKENDS_PROBE_ENABLED="false"

COPY varnish.vcl /etc/varnish/conf.d/
