# Scala and sbt for Ubuntu 13.10
#
# URL: https://github.com/William-Yeh/docker-scala
#
# forked from: pulse00/scala
#              - https://index.docker.io/u/pulse00/scala/
#              - https://github.com/dubture-dockerfiles/scala
#
# Version     0.2

FROM pulse00/java
MAINTAINER William Yeh <william.pjyeh@gmail.com>

# upgrade Oracle JDK 1.7.0 to latest revision, if any
RUN apt-get update  &&  apt-get -y upgrade

# install add-apt-repository tool
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes software-properties-common

# install wget for downloading files
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes wget

# Typesafe repo (contains old versions but they have all dependencies we need later on)
RUN wget http://apt.typesafe.com/repo-deb-build-0002.deb
RUN dpkg -i repo-deb-build-0002.deb
RUN rm -f repo-deb-build-0002.deb

# update apt repositories
RUN apt-get update

# install Scala 2.10.4, requires OpenJDK 1.6
# 1) first install prerequisites
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes openjdk-6-jre libjansi-java
# 2) finally install Scala 2.10.4
RUN wget http://www.scala-lang.org/files/archive/scala-2.10.4.deb
RUN dpkg -i scala-2.10.4.deb
RUN rm -f scala-2.10.4.deb


# install sbt 0.13.5
RUN wget http://dl.bintray.com/sbt/debian/sbt-0.13.5.deb
RUN dpkg -i sbt-0.13.5.deb
RUN rm -f sbt*.deb


# Set java 7 as default
RUN update-alternatives --set java  /usr/lib/jvm/java-7-oracle/jre/bin/java

# Clean up /var/cache/apt/archives/*
RUN apt-get clean



# create an empty sbt project;
# then fetch all sbt jars from Maven repo so that your sbt will be ready to be used when you launch the image
RUN mkdir -p    /tmp/test-sbt
ADD test-sbt.sh /tmp/test-sbt/
RUN cd /tmp/test-sbt  &&  ./test-sbt.sh
RUN rmdir -rf /tmp/test-sbt

# print versions
RUN java -version

# scala -version returns code 1 instead of 0 thus "|| true"
RUN scala -version || true



# Define default command.
CMD ["scala"]
