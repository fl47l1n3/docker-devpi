FROM debian:wheezy

MAINTAINER Dixie Flatline <dixie@fl47l1n3.net>

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y python
RUN wget --no-check-certificate -O- https://bootstrap.pypa.io/get-pip.py | python

RUN pip install devpi

EXPOSE 3141
VOLUME /devpi
ENTRYPOINT ["devpi-server"]
CMD ["--host=0.0.0.0", "--port=3141", "--serverdir=/devpi"]
