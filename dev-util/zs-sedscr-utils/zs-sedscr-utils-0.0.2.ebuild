# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal

DESCRIPTION="Zscheile SedScripts Utilities"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-apps/sed"

src_install() {
	echo install mksedscr
	dobin mksedscr

	for file in append pop; do
		echo "install sedscr-$file"
		dobin "sedscr-$file"
	done
}
