#!/bin/bash

set -x
id -a
pwd
ls -al 
echo "---[ .bashrc ]------------------------------------"
cat ~/.bashrc
echo "---[ PATH - before ]------------------------------------"
echo $PATH
echo "---[ sourcing .bashrc ]------------------------------------"
. ~/.bashrc
echo "---[ PATH - after ]------------------------------------"
echo $PATH
echo "---[ exporting PATH ]------------------------------------"
export PATH=$PATH:/usr/local/go/bin
echo "--------------------------------------------------"

go version

NAME="jenkins-job-dsl-to-xml"

export GOPATH="$(pwd)"

rm -rf ./bin/*

cd "./src/github.com/rsmaxwell/${NAME}"

#go get github.com/dgrijalva/jwt-go
#go get github.com/eclipse/paho.mqtt.golang
#go get github.com/go-playground/locales/en
#go get github.com/go-playground/universal-translator
#go get github.com/jackc/pgconn
#go get github.com/jackc/pgx
#go get github.com/jackc/pgx/stdlib
#go get github.com/lib/pq
#go get golang.org/x/crypto/bcrypt
#go get gopkg.in/go-playground/validator.v9
#go get gopkg.in/go-playground/validator.v9/translations/en

go install ./...
