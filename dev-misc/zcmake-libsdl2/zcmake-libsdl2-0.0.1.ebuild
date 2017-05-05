# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-minimal
DESCRIPTION="FindLibSDL2 cmake files"
KEYWORDS="arm amd64 x86"
RDEPEND="media-libs/libsdl2"

src_install() {
	insinto /usr/share/cmake/Modules
	for i in *.cmake; do
		doins "$i"
	done
}
