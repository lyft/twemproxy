FROM dregistry.lyft.net/base:latest
ENTRYPOINT ["/usr/bin/nutcracker", "-c", "/etc/nutcracker/nutcracker.yaml"]
# ADD nutcracker /usr/bin/nutcracker
ADD source /etc/nutcracker
RUN ls -la /etc/nutcracker
