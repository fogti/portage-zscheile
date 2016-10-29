# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: flash implementations"
KEYWORDS="amd64 arm x86"
IUSE="+nsapi pepper"
RDEPEND="
	nsapi? (
	  || (
	    www-plugins/adobe-flash:0
	    www-plugins/gnash
	  )
	)
	pepper? (
	  www-plugins/adobe-flash:2
	)"
