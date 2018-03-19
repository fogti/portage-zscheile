# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: Environment for Arduino IDE"
KEYWORDS="x86 amd64"

RDEPEND="dev-embedded/avrdude
	dev-embedded/uisp
	dev-java/jna
	dev-java/rxtx"
