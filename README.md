Docker-Scala
============

## Summary

Repository name in Docker Index: **[williamyeh/docker-scala](https://index.docker.io/u/williamyeh/docker-scala/)**

This repository contains **Dockerfile** of [Java](https://www.java.com/) and [Scala](http://www.scala-lang.org) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/williamyeh/docker-scala/) published to the public [Docker Registry](https://index.docker.io/).





## Configuration

This docker image contains the following software stack:

- OS: Debian jessie.

- Java: Oracle JDK 1.7.0_60

- Scala: 2.10.4

- Sbt: 0.13.5



### Dependencies

* [williamyeh/docker-java7](https://github.com/William-Yeh/docker-java7)


### History

* 0.3 - Change the Java dependency from [pulse00/java](https://github.com/dubture-dockerfiles/java) to [williamyeh/docker-java7](https://github.com/William-Yeh/docker-java7).

* 0.2 - This repository was forked from [pulse00/scala](https://index.docker.io/u/pulse00/scala/).




## Installation on Docker-friendly OS

If you're using a Docker-friendly OS (e.g., CoreOS, Debian, Ubuntu):

1. Install [Docker](https://www.docker.io/), if necessary.

2. Download [trusted build](https://index.docker.io/u/williamyeh/docker-scala/) from public [Docker Registry](https://index.docker.io/):

   ```
   $ docker pull williamyeh/docker-scala
   ```

   (alternatively, you can build an image from Dockerfile: `docker build -t="williamyeh/docker-scala" github.com/William-Yeh/docker-scala`)



## Installation on Vagrant


### For the impatient

1. Copy the `Vagrantfile` of this project to your working directory.

2. Initialize and ssh into the Vagrant box:

   ```
   $ vagrant up
   $ vagrant ssh
   ```




### "Docker" provider

If you'd like to use the [Docker provider feature](https://www.vagrantup.com/blog/feature-preview-vagrant-1-6-docker-dev-environments.html) introduced since Vagrant 1.6:

1. Place a `Vagrantfile` in your working directory like this:

   ```
   VAGRANTFILE_API_VERSION = "2"

   Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
       config.vm.define "docker-scala" do |v|
           v.vm.provider "docker" do |d|
               d.image = "williamyeh/docker-scala"
           end
       end
   end
   ```


2. Initialize the Docker container (with an implicit Vagrant box such as [mitchellh/boot2docker](https://github.com/mitchellh/boot2docker-vagrant-box), if necessary):

   ```
   $ vagrant up --provider=docker
   ``` 

3. See if Docker runs successfully:

   ```
   $ vagrant docker-logs
   ```


Vagrant 1.6 has also introduced Docker-related commands (e.g., `docker-logs` & `docker-run`). Consult the [official document](https://docs.vagrantup.com/v2/docker/commands.html) for more details.






## Usage

```
$ docker run -i -t williamyeh/docker-scala bash
```


#### Run `scala`

```
$ docker run -i -rm -t williamyeh/docker-scala
```
