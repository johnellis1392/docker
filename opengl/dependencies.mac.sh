#!/bin/bash

# Dependencies for runnin glxgears docker container
# on MacOS, as explained in this thread:
# https://github.com/moby/moby/issues/8710


# Install socat (SOcket CAT)
# Creates a bi-directional byte stream for communicating
# with other applications through socket streams.
brew install socat

# Install XQuartz
brew cask install xquartz

# Open XQuartz
open -a XQuartz

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

# Now in another window launch docker via:
# docker run -e DISPLAY=129.168.59.3:0 jess/geary

