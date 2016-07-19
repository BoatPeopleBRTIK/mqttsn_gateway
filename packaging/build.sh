#!/bin/sh

PKG_NAME=TomyGateway
VERSION=1.1.1
FULL_NAME=${PKG_NAME}-${VERSION}

rm -rf ~/rpmbuild/*
mkdir -p ~/rpmbuild/SOURCES
mkdir -p ~/rpmbuild/BUILD

mkdir -p ./${FULL_NAME}
cp -rf ../Gateway/src ./${FULL_NAME}/src
cp -f ../Gateway/Makefile ./${FULL_NAME}
cp ../Gateway/param.conf ./${FULL_NAME}

tar zcvf ~/rpmbuild/SOURCES/${FULL_NAME}.tar.gz ./${FULL_NAME}
rm -rf ${FULL_NAME}
rpmbuild --target=armv7hl -ba TomyGateway.spec
