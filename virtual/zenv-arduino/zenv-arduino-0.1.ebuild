# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-virtual
DESCRIPTION="Alain Zscheile: Environment for Arduino IDE"
KEYWORDS="amd64 x86"

RDEPEND="dev-embedded/avrdude
	dev-embedded/uisp
	dev-java/jna
	dev-java/rxtx"
