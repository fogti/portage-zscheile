# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Common - useful scripts"

IUSE="linguas_de"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-libs/ncurses"

src_install() {
	insinto /usr/share/zserik-common

	for file in base.sh color.sh efunctions.sh misc.sh ; do
		doins ${file}
	done
	use linguas_de && doins umlauts.sh
}
