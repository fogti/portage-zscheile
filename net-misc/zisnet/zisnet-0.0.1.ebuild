# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base autotools-utils

DESCRIPTION="Zscheile Information System - with simple blockchain implementation"
KEYWORDS="amd64 arm x86"

COMMON_DEPEND="dev-libs/openssl"

DEPEND="$DEPEND
$COMMON_DEPEND"
RDEPEND="$RDEPEND
$COMMON_DEPEND"
