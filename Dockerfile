FROM redis/redis-stack:latest

# Prepare conf
COPY ./conf/redis.conf /usr/local/etc/redis/redis.conf
COPY ./conf/sysctl.conf /etc/sysctl.conf
# Prepare ACLs
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

CMD ["sh", "-c", "/usr/local/bin/init.sh && redis-server /usr/local/etc/redis/redis.conf"]