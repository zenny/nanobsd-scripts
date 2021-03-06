#!/usr/bin/env bash
DISTS="base.txz kernel.txz docs.txz games.txz src.txz"
H=$(dirname "$0")
DDIR="${H}/./../dists"
mkdir -p $DDIR
cd $DDIR
for tarball in ${DISTS}; do
    curl --continue - -LO "http://ftp.freebsd.org/pub/FreeBSD/releases/amd64/amd64/10.0-RELEASE/${tarball}"
done
