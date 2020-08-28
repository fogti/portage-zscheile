# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-virtual
DESCRIPTION="Zscheile CMake virtual: LibFindMacros"
KEYWORDS="arm amd64 x86"
RDEPEND="|| (
	dev-misc/zcmake-libfindmacros
	dev-libs/zsadv
)"
