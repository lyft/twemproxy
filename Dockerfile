FROM lyft/base
ENTRYPOINT ["/code/nutcracker/entrypoint.sh"]
RUN apt-get update -y && \
    apt-get install -y build-essential autoconf libtool
COPY . /code/twemproxy
RUN autoreconf -fvi && \
    ./configure && \
    make && \
    make install
