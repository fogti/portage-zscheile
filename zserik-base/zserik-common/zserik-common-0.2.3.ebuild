# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Common - useful scripts"

KEYWORDS="x86"
IUSE="linguas_de"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-libs/ncurses"

src_install() {
	insinto /usr/share/zserik-common
	for file in base.sh color.sh efunctions.sh misc.sh utils.sh ; do
		doins ${file}
	done

	if use linguas_de ; then
		insinto /usr/share/zserik-common/i18n/de
		for file in index.sh umlauts.sh ; do
			doins i18n/de/${file}
		done
	fi
}
