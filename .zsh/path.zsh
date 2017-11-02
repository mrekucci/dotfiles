# Include directories from GOPATH in search when changing path
for gopath in ${(s/:/)GOPATH}; do
    path+=($gopath/bin) # Include binaries built by Golang in the search.
    cdpath+=($gopath/src/golang.org $gopath/src/github.com $gopath/src/bitbucket.org)
done

# Automatically change path if typed word is a directory
setopt auto_cd
