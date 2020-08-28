# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="ZS Recursil - directory recursion tool"
KEYWORDS="amd64 arm x86"

# we need boost + c++11 libraries
COMMON_DEPEND=">=dev-libs/boost-1.61.0:="

DEPEND="$DEPEND
$COMMON_DEPEND"

RDEPEND="$RDEPEND
$COMMON_DEPEND"
