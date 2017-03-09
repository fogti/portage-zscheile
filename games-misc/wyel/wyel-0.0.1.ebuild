# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit games zserik-cmake

DESCRIPTION="Zscheile WYEL Game"
KEYWORDS="amd64 arm x86"

CMDEPEND="sys-libs/glibc
sys-libs/ncurses"
DEPEND="${DEPEND}
${CMDEPEND}
>=sys-devel/gcc-4.8.5[cxx]"
RDEPEND="${RDEPEND}
${CMDEPEND}"

src_install() {
	dogamesbin ${BUILD_DIR}/wyel
	prepgamesdirs
}
