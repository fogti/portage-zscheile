# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile EIK shell script interpreter"
KEYWORDS="amd64 arm x86"

COMMON_DEPEND="$COMMON_DEPEND
dev-libs/boost
=dev-libs/zeik-handles-0.0.1"

DEPEND="$DEPEND
$COMMON_DEPEND
"

RDEPEND="$RDEPEND
$COMMON_DEPEND
"
