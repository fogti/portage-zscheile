# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-base

DESCRIPTION="Zscheile SedScripts Utilities"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-apps/coreutils
sys-apps/sed"

src_install() {
	echo install mksedscr
	dobin mksedscr

	for file in append pop; do
		echo "install sedscr-$file"
		dobin "sedscr-$file"
	done
}
