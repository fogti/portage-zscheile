# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: Environment for Shotcut"
KEYWORDS="amd64"
RDEPEND="media-libs/libsdl
	virtual/zenv-media[pulseaudio]
	x11-misc/xdg-utils"
