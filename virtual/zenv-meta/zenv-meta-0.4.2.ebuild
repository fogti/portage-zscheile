# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: meta environment package"

IUSE="X alsa gnome gtk jack kde mutter qt zs_modules_media zs_modules_zserik linguas_de"

REQUIRED_USE="gnome? ( gtk mutter )
	gtk? ( X )
	kde? ( qt )
	mutter? ( X )
	qt? ( X )"

RDEPEND="virtual/zenv-compiler[compiler_gcc]
	X? ( x11-base/xorg-server )
	mutter? ( x11-wm/mutter )
	gtk? ( x11-libs/gtk+ )
	zs_modules_media? ( >=virtual/zenv-media-0.5[alsa?,gnome?,jack?,qt?,kde?] )
	zs_modules_zserik? ( zserik-base/zserik-common[linguas_de?] )"
