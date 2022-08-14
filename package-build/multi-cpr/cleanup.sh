#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

rm -f \
    libcpr_1.9.0-1.debian.tar.xz \
    libcpr_1.9.0-1.dsc \
    libcpr_1.9.0-1_amd64.build \
    libcpr-dev-dbgsym_1.9.0-1_amd64.ddeb \
    libcpr-dev_1.9.0-1_amd64.deb \
    libcpr1-dbgsym_1.9.0-1_amd64.ddeb \
    libcpr1_1.9.0-1_amd64.deb \
    libcpr_1.9.0-1_amd64.buildinfo \
    libcpr_1.9.0-1_amd64.changes
rm -f \
    libcpr-1.9.0/debian/*.debhelper.log \
    libcpr-1.9.0/debian/debhelper-build-stamp \
    libcpr-1.9.0/debian/files \
    libcpr-1.9.0/debian/libcpr-dev.substvars \
    libcpr-1.9.0/debian/libcpr1.substvars
rm -rf \
    libcpr-1.9.0/obj-x86_64-linux-gnu/
rm -rf \
    libcpr-1.9.0/debian/.debhelper/ \
    libcpr-1.9.0/debian/libcpr-dev/ \
    libcpr-1.9.0/debian/libcpr1/ \
    libcpr-1.9.0/debian/tmp/

