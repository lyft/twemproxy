FROM dregistry.lyft.net/base:latest
ENTRYPOINT ["/code/twemproxy/launcher"]
ADD nutcracker /usr/bin/nutcracker
ADD launcher /code/twemproxy/launcher
ADD .image/generated/*.yaml /etc/nutcracker/
