# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Common - useful scripts"
KEYWORDS="amd64 x86"
IUSE="color linguas_de"

RDEPEND=">=app-misc/zsoutils-0.0.4
app-shells/bash
sys-apps/coreutils"

src_compile() {
	local xgen=""
	use color && xgen+="color.sh "
	for i in $xgen vars.sh; do
		echo "generate $i"
		./gen-sh-script.sh $i > $i || die "gen-sh-script.sh failed"
	done
}

src_install() {
	insinto /usr/share/zs-common
	for file in base.sh fileop.sh vars.sh; do
		echo "install $file"
		doins $file
	done

	if use color; then
		echo "install color.sh"
		doins color.sh
	fi

	exeinto /usr/share/zs-common
	for file in gen-sh-script.sh zsx-wrapper.sh; do
		echo "install $file"
		doexe $file
	done

	insinto /usr/share/zs-common/locales
	echo "install locales/index.sh"
	doins locales/index.sh

	if use linguas_de; then
		echo "install locales/de.sh"
		doins locales/de.sh
	fi
}
