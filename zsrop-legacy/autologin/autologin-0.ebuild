# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zsrop-legacy
DESCRIPTION="Automatic login using init and mingetty"
RDEPEND="
	net-dialup/mingetty
	sys-apps/sysvinit
	zsrop-legacy/xinit
"
DEPEND="$RDEPEND"
