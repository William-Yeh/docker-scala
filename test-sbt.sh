#!/bin/bash
#
# a simple test for sbt
#
# @see http://stackoverflow.com/a/12781664/714426
#

SCALA_VERSION=2.10.4

cat << EOF | sbt
set name := "SbtTest"
set version := "1.0"
set scalaVersion := "$SCALA_VERSION"
session save
exit
EOF

sbt about
