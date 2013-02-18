#!/bin/sh
########################################################################################
#
# Install JDK Script
# 
# Shawn Ma
#
########################################################################################
# Define
TARGET=jdk-7u13-linux-x64.tar.gz
SOURCE=http://download.oracle.com/otn-pub/java/jdk/7u13-b20/jdk-7u13-linux-x64.tar.gz

# Create a build directory
mkdir -p /opt/install/java && cd /opt/install/java

# Prepare for compilation source
curl -o $TARGET $SOURCE
mkdir -p tmp && tar -zxvf $TARGET -C tmp

# Install build dependencies

# Create a User Group

# Compile and deploy
mkdir -p /opt/environment/java && mv tmp/* /opt/environment/java/1.7.0

# Postinstallation setup
export PATH=$PATH:/opt/environment/java/1.7.0/bin

# Configuration

# Additional
#sed -i '/export PATH$/a\export PATH=$PATH:\/opt\/environment\/java\/1.7\/bin' /etc/profile




