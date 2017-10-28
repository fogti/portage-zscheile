# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-minimal

DESCRIPTION="ZModulesCtl - Zscheile Modules Control"
KEYWORDS="arm amd64 x86"

src_install() {
	dodir /etc/zmodules
	dodir /usr/lib/zmodules

	echo "install zmodulesctl"
	dobin zmodulesctl

	echo "install zmodulesctl.help"
	insinto /usr/share/help/C
	newins zmodulesctl.help zmodulesctl.txt
}
