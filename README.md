Introduction
============

Dockerfile to build a [devpi](http://doc.devpi.net/) server container.

Installation
============

Pull from Docker repository

```bash
docker pull fl47l1n3/devpi
```

Quick Start
===========

Run devpi image

```bash
docker run -d -p 3141:3141 fl47l1n3/devpi
```

To test devpi, try install python package through devpi PyPi proxy

```bash
virtualenv env && source ./env/bin/activate
pip install -i http://localhost:3141/root/pypi/ simplejson
```

Configuration
=============

You should mount volume with packages data and devpi configs

```bash
docker run -d -p 3141:3141 -v /opt/devpi:/devpi fl47l1n3/devpi
```

You can add your command line options for devpi

```bash
docker run -d -p 3141:3141 fl47l1n3/devpi --role=replica
```
