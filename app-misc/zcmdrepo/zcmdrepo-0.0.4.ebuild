# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-minimal

DESCRIPTION="ZCMDRepo - Zscheile Command Repository Utils"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
sys-apps/coreutils"

src_install() {
	dobin zcmdrepo-adm
}
