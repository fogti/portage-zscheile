# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: webkit-gtk environment package"

SLOT="0/3"
IUSE="+geoloc +introspection"

REQUIRED_USE="geoloc? ( introspection )"

RDEPEND="net-libs/webkit-gtk[geoloc?,introspection?]
	geoloc? ( app-misc/geoclue:0 )"
