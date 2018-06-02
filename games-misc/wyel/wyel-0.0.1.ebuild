# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile WYEL Game"
KEYWORDS="amd64 arm x86"

DEPEND="${DEPEND}
sys-libs/ncurses:="

RDEPEND="${RDEPEND}
sys-libs/ncurses:="
