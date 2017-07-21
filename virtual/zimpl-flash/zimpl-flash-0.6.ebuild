# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: flash implementations"
KEYWORDS="amd64 arm x86"
IUSE="+nsplugin ppapi"
RDEPEND="www-plugins/adobe-flash[nsplugin?,ppapi?]"
