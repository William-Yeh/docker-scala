## Scala Dockerfile


This repository contains **Dockerfile** of [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/pulse00/scala/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [pulse00/java](https://github.com/dubture-dockerfiles/java)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/pulse00/scala/) from public [Docker Registry](https://index.docker.io/): `docker pull pulse00/scala`

   (alternatively, you can build an image from Dockerfile: `docker build -t="pulse00/scala" github.com/dubture-dockerfiles/scala`)


### Usage

    docker run -i -t pulse00/scala bash

#### Run `scala`

    docker run -i -rm -t pulse00/scala
