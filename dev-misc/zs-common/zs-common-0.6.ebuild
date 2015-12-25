# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Common - useful scripts"

KEYWORDS="amd64 x86"
IUSE="linguas_de"

RDEPEND=">=app-misc/zsoutils-0.0.3
app-shells/bash
sys-apps/coreutils"

src_compile() {
	echo "generate vars.sh"
	./gen-sh-script.sh vars.sh > vars.sh || die "gen-sh-script.sh failed"
}

src_install() {
	insinto /usr/share/zs-common
	for file in base.sh fileop.sh vars.sh; do
		echo "install $file"
		doins $file
	done

	exeinto /usr/share/zs-common
	for file in gen-sh-script.sh zsx-wrapper.sh; do
		echo "install $file"
		doexe $file
	done

	insinto /usr/share/zs-common/locales
	echo "install locales/index.sh"
	doins locales/index.sh

	if use linguas_de ; then
		echo "install locales/de.sh"
		doins locales/de.sh
	fi
}
