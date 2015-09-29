# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Common - useful scripts"

KEYWORDS="amd64 x86"
IUSE="linguas_de"

RDEPEND=">=app-misc/zsoutils-0.0.2
app-shells/bash
sys-apps/coreutils"

src_install() {
	insinto /usr/share/zserik-common
	for file in base.sh misc.sh; do
		echo "install $file"
		doins ${file}
	done

	insinto /usr/share/zserik-common/locales
	echo "install locales/index.sh"
	doins locales/index.sh

	if use linguas_de ; then
		echo "install locales/de.sh"
		doins locales/de.sh
	fi
}
