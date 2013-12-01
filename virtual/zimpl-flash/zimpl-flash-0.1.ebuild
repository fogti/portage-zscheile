# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4

DESCRIPTION="Erik Zscheile: flash implementations"
HOMEPAGE=""
SRC_URI=""

SLOT="0"
LICENSE=""
KEYWORDS="x86"
IUSE="swfdec_only"

RDEPEND="|| (
	www-plugins/adobe-flash
	www-plugins/gnash
	www-plugins/lightspark
	swfdec_only? ( www-plugins/swfdec-mozilla )
	)"
