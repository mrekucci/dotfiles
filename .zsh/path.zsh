# Include binaries built by Golang in the search
path+=($GOPATH/bin)

# Include directories from GOPATH in search when changing path
cdpath+=($GOPATH/src/golang.org $GOPATH/src/github.com $GOPATH/src/bitbucket.org)

# Automatically change path if typed word is a directory
setopt auto_cd
