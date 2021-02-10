# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake
DESCRIPTION="Zscheile WYEL Game"
KEYWORDS="amd64 arm x86"

DEPEND="${DEPEND}
sys-libs/ncurses:="
RDEPEND="${RDEPEND}
sys-libs/ncurses:="
