# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: flash implementations"

KEYWORDS="~x86"
IUSE="gstreamer swfdec_only"

RDEPEND="|| (
	www-plugins/adobe-flash
	www-plugins/gnash
	www-plugins/lightspark
	swfdec_only? (
		media-libs/swfdec[gstreamer?]
		|| ( www-plugins/swfdec-mozilla gnome-extra/swfdec-gnome )
		)
	)"
