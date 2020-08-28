# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-virtual

DESCRIPTION="Erik Zscheile: Environment for Arduino IDE"
KEYWORDS="amd64 x86"

RDEPEND="dev-embedded/avrdude
	dev-embedded/uisp
	dev-java/jna
	dev-java/rxtx"
