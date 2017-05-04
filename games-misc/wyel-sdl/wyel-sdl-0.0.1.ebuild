# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile WYEL Game - Advanced SDL version"
KEYWORDS="amd64 x86 ~arm"

CMDEPEND="media-libs/libsdl
media-libs/sdl-ttf"

DEPEND="${DEPEND}
${CMDEPEND}
>=sys-devel/gcc-4.8.5[cxx]"

RDEPEND="${RDEPEND}
${CMDEPEND}"
