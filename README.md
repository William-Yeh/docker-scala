Docker-Scala
============

## Summary

Repository name in Docker Hub: **[williamyeh/scala](https://registry.hub.docker.com/u/williamyeh/scala/)**

This repository contains Dockerized [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian 8 ("Jessie").

- Java: Oracle JDK 1.7.0

- Scala: 2.11.6, 2.10.4 (see [tag list](https://registry.hub.docker.com/u/williamyeh/scala/tags/manage/) for details)



### Dependencies

* [williamyeh/java7](https://github.com/William-Yeh/docker-java7)


### History

* 0.7 - Move sbt from this scala image to [williamyeh/sbt](https://registry.hub.docker.com/u/williamyeh/sbt/) instead.

* 0.6 - Install sbt manually instead of deb.

* 0.5 - Support version tags.

* 0.4 - Fix APT dependency: openjdk-6-jre --> oracle-java7-installer.

* 0.3 - Change the Java dependency from [pulse00/java](https://github.com/dubture-dockerfiles/java) to [williamyeh/java7](https://github.com/William-Yeh/docker-java7).

* 0.2 - This repository was forked from [pulse00/scala](https://registry.hub.docker.com/u/pulse00/scala/).




## Usage

Used mostly as a base image for other Scala-based applications. But if you'd like to use the CLI, here are some examples for you.


#### Run `scala` REPL

```
$ docker run -it --rm williamyeh/scala
```
