#!/bin/bash

dir=mongodb

bindir=~/.local/bin
dockerdir=~/.docker
datadir=/data/db
sampledir=/opt/dbdata/sampledb/mongodb

mkdir -p $bindir
mkdir -p $dockerdir/$dir
mkdir -p $datadir
mkdir -p $sampledir

cp -r ./* $dockerdir/$dir/
mv $dockerdir/$dir/bin/* $bindir/
chmod +x $bindir/*
rmdir $dockerdir/$dir/bin
rm -f $bindir/$0

exit 0

