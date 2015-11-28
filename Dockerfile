FROM dregistry.lyft.net/base:latest
ENTRYPOINT ["/usr/bin/nutcracker", "-c", "/etc/nutcracker/nutcracker.yaml"]
ADD nutcracker /usr/bin/nutcracker
ADD .image/generated/*.yaml /etc/nutcracker/
