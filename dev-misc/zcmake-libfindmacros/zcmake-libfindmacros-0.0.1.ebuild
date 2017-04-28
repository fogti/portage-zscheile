# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-minimal
DESCRIPTION="LibFindMacros.cmake"
KEYWORDS="arm amd64 x86"
RDEPEND="!dev-libs/zsadv"

src_install() {
	insinto /usr/share/cmake/Modules
	doins LibFindMacros.cmake
}
