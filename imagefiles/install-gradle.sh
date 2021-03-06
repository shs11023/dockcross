#!/bin/bash

#
# Configure, build and install gradle
#
# Usage:
#
#

set -e
set -o pipefail

# Download
REV=4.3.1
wget --progress=bar:force https://services.gradle.org/distributions/gradle-$REV-bin.zip --no-check-certificate
mkdir /opt/gradle
unzip -d /opt/gradle gradle-$REV-bin.zip

# Path
ln -s /opt/gradle/gradle-4.3.1/bin/gradle /bin/gradle

# Clean
if [ -f "gradle-$REV-bin.zip" ] ; then
  rm -rf gradle-$REV-bin.zip
fi
