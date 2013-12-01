# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base base

DESCRIPTION="ZSerik Common - useful scripts"

IUSE="color linguas_de"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/openrc
color? ( sys-libs/ncurses )"

PATCHES="${FILESDIR}/0.1-r1-shebang_and_include.patch"

src_install() {
	insinto /usr/share/zserik-common

	for file in base.sh misc.sh ; do
		doins ${file}
	done
	use color && doins color.sh
	use linguas_de && doins umlauts.sh
}
