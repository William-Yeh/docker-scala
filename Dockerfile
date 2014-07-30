# Scala and sbt on Java 7
#
# URL: https://github.com/William-Yeh/docker-scala
#
# forked from: pulse00/scala
#              - https://index.docker.io/u/pulse00/scala/
#              - https://github.com/dubture-dockerfiles/scala
#
# Version     0.4

FROM williamyeh/java7
MAINTAINER William Yeh <william.pjyeh@gmail.com>


ENV SCALA_TARBALL http://www.scala-lang.org/files/archive/scala-2.10.4.deb
ENV SBT_TARBALL   http://dl.bintray.com/sbt/debian/sbt-0.13.5.deb


# install from Typesafe repo (contains old versions but they have all dependencies we need later on)
RUN DEBIAN_FRONTEND=noninteractive  && \
    apt-get install -y --force-yes wget  && \
    wget http://apt.typesafe.com/repo-deb-build-0002.deb  && \
    dpkg -i repo-deb-build-0002.deb  && \
    apt-get update  && \
    \
    apt-get install -y --force-yes libjansi-java  && \
    wget $SCALA_TARBALL  && \
    wget $SBT_TARBALL    && \
    dpkg -i scala-*.deb  sbt-*.deb  && \
    \
    rm -f *.deb  && \
    apt-get clean



# create an empty sbt project;
# then fetch all sbt jars from Maven repo so that your sbt will be ready to be used when you launch the image
COPY test-sbt.sh /tmp/
RUN cd /tmp  && \
    ./test-sbt.sh  && \
    rm -rf *

# print versions
RUN java -version

# scala -version returns code 1 instead of 0 thus "|| true"
RUN scala -version || true



# Define default command.
CMD ["scala"]
