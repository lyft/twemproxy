FROM dregistry.lyft.net/base:latest
ENTRYPOINT ["/usr/bin/nutcracker", "-c", "/etc/nutcracker/nutcracker.yaml"]
ADD source/nutcracker /usr/bin/nutcracker
ADD source/generated/*.yaml /etc/nutcracker/
RUN ls -la /etc/nutcracker
