# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-cmake

DESCRIPTION="ZCoPD - Zscheile Configuration Protocol Daemon"

KEYWORDS="amd64 x86"

COMMON_DEPEND="$COMMON_DEPEND
sys-libs/glibc"

DEPEND="$DEPEND
sys-devel/gcc
$COMMON_DEPEND"

RDEPEND="$RDEPEND
app-shells/bash
sys-apps/coreutils
sys-apps/util-linux
net-analyzer/netcat6
$COMMON_DEPEND"
