# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: meta environment package"

IUSE="X alsa gnome gtk zs_modules_media qt"

REQUIRED_USE="gnome? ( gtk )
	gtk? ( X )
	qt? ( X )"

RDEPEND="virtual/zenv-compiler[compiler_gcc]
	X? ( x11-base/xorg-server )
	zs_modules_media? ( >=virtual/zenv-media-0.5[alsa?,gnome?,qt?] )
	gnome? ( gnome-base/gnome )
	gtk? ( x11-libs/gtk+ )"
