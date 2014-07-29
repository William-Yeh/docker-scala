Docker-Scala
============

## Summary

Repository name in Docker Hub: **[williamyeh/docker-scala](https://registry.hub.docker.com/u/williamyeh/docker-scala/)**

This repository contains Dockerized [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian jessie.

- Java: Oracle JDK 1.7.0

- Scala: 2.10.4

- Sbt: 0.13.5



### Dependencies

* [williamyeh/docker-java7](https://github.com/William-Yeh/docker-java7)


### History

* 0.4 - Fix APT dependency: openjdk-6-jre --> oracle-java7-installer.

* 0.3 - Change the Java dependency from [pulse00/java](https://github.com/dubture-dockerfiles/java) to [williamyeh/docker-java7](https://github.com/William-Yeh/docker-java7).

* 0.2 - This repository was forked from [pulse00/scala](https://registry.hub.docker.com/u/pulse00/scala/).




## Installation

   ```
   $ docker pull williamyeh/docker-scala
   ```

## Usage

```
$ docker run -i -t williamyeh/docker-scala bash
```


#### Run `scala`

```
$ docker run -i -rm -t williamyeh/docker-scala
```
