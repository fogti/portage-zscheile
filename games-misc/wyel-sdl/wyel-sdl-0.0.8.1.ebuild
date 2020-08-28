# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="Zscheile WYEL Game - Advanced SDL version"
KEYWORDS="amd64 x86 ~arm"

CMDEPEND="media-libs/libsdl2[threads,video]
media-libs/sdl2-ttf"

DEPEND="${DEPEND}
${CMDEPEND}
dev-misc/zcmake-libsdl2"

RDEPEND="${RDEPEND}
${CMDEPEND}
virtual/ttf-fonts"
