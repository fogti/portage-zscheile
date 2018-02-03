# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="ZS Recursil - directory recursion tool"
KEYWORDS="amd64 x86 arm"

# we need boost + c++11 libraries
COMMON_DEPEND=">=dev-libs/boost-1.61.0:=
>=sys-devel/gcc-4.8.5:=[cxx]"

DEPEND="$DEPEND
$COMMON_DEPEND"

RDEPEND="$RDEPEND
$COMMON_DEPEND"
