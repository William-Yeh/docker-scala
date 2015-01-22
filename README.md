Docker-Scala
============

## Summary

Repository name in Docker Hub: **[williamyeh/scala](https://registry.hub.docker.com/u/williamyeh/scala/)**

This repository contains Dockerized [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian jessie.

- Java: Oracle JDK 1.7.0

- Scala: 2.11.4, 2.11.2, 2.10.4 (see [tag list](https://registry.hub.docker.com/u/williamyeh/scala/tags/manage/) for details)

- Sbt: 0.13.6



### Dependencies

* [williamyeh/java7](https://github.com/William-Yeh/docker-java7)


### History

* 0.6 - Install sbt manually instead of deb.

* 0.5 - Support version tags.

* 0.4 - Fix APT dependency: openjdk-6-jre --> oracle-java7-installer.

* 0.3 - Change the Java dependency from [pulse00/java](https://github.com/dubture-dockerfiles/java) to [williamyeh/java7](https://github.com/William-Yeh/docker-java7).

* 0.2 - This repository was forked from [pulse00/scala](https://registry.hub.docker.com/u/pulse00/scala/).




## Installation


Latest version:

   ```
   $ docker pull williamyeh/scala:latest
   ```

All versions:

   ```
   $ docker pull williamyeh/scala
   ```

Specific version:

   ```
   $ docker pull williamyeh/scala:2.10.4
   ```



## Usage

Used mostly as a base image for other Scala-based applications. But if you'd like to use the CLI, here are some examples for you.


#### Run `scala` REPL

```
$ docker run -it --rm williamyeh/scala
```
