# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"

COMMON_DEPEND="$COMMON_DEPEND
	dev-libs/boost"

DEPEND="$COMMON_DEPEND
	$DEPEND
	>=sys-devel/gcc-6.3.0[cxx]"

RDEPEND="$COMMON_DEPEND
$RDEPEND"
