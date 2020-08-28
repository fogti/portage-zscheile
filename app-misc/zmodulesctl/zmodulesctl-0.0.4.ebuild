# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-minimal

DESCRIPTION="ZModulesCtl - Zscheile Modules Control"
KEYWORDS="arm amd64 x86"

src_install() {
	dodir /etc/zmodules
	dodir /usr/lib/zmodules
	dobin zmodulesctl
}
