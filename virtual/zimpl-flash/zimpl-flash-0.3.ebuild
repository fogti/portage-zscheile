# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: flash implementations"

KEYWORDS="amd64 ~arm x86"
IUSE="gstreamer"

RDEPEND="|| (
	www-plugins/adobe-flash
	www-plugins/gnash
	www-plugins/lightspark
	)"
