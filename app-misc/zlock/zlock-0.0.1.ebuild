# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-cmake

DESCRIPTION="zlock - Zscheile LOCKing manager"

KEYWORDS="arm amd64 x86"

COMMON_DEPEND="$COMMON_DEPEND
sys-libs/glibc"

DEPEND="$DEPEND
$COMMON_DEPEND"

RDEPEND="$RDEPEND
$COMMON_DEPEND"
