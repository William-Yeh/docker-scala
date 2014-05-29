Docker-Scala
============

## Summary

Repository name in Docker Index: **[williamyeh/docker-scala](https://index.docker.io/u/williamyeh/docker-scala/)**

This repository contains **Dockerfile** of [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/williamyeh/docker-scala/) published to the public [Docker Registry](https://index.docker.io/).





## Configuration

This docker image contains the following software stack:

- OS:   Ubuntu 13.10 (built from [stackbrew/ubuntu:13.10](https://index.docker.io/u/stackbrew/ubuntu/)).

- Java: Oracle JDK 1.7.0_55-b13

- Scala: 2.10.4

- Sbt: 0.13.1


### History

This repository was forked from [pulse00/scala](https://index.docker.io/u/pulse00/scala/).


### Dependencies

* [pulse00/java](https://github.com/dubture-dockerfiles/java), which in turns [stackbrew/ubuntu:13.10](https://index.docker.io/u/stackbrew/ubuntu/).



## Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/williamyeh/docker-scala/) from public [Docker Registry](https://index.docker.io/): `docker pull williamyeh/docker-scala`

   (alternatively, you can build an image from Dockerfile: `docker build -t="williamyeh/docker-scala" github.com/William-Yeh/docker-scala`)


## Usage

```
docker run -i -t williamyeh/docker-scala bash
```


#### Run `scala`

```
docker run -i -rm -t williamyeh/docker-scala
```
