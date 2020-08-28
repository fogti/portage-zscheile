# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zsrop-legacy
DESCRIPTION="X11 session script for a combination of xfdesktop and icewm"
KEYWORDS="amd64 x86"
RDEPEND="
	x11-wm/icewm
	xfce-base/xfdesktop
	zsrop-legacy/xinit
"
DEPEND="$RDEPEND"
