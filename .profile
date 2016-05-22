# Load all bash completion scripts.
for SCRIPT in /usr/local/etc/bash_completion.d/*
do
    if [ -e $SCRIPT ]
    then
        source $SCRIPT
    fi
done
# Finished adapting all  bash completion scripts.

# Export JAVA_HOME environment variable.
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# Finished adapting JAVA_HOME environment variable.

# Export GOPATH environment variable.
export GOPATH=$HOME/Documents/workspace/gocode
export PATH=$PATH:$GOPATH/bin
# Finished adapting GOPATH environment variable.

# Export changes the resolution of import paths according to: https://go-review.googlesource.com/#/c/10923/
GO15VENDOREXPERIMENT=1
# Finished export. TODO: remove it after Go 1.6 release!

# Grep color always on.
export GREP_OPTIONS="--color=always"
