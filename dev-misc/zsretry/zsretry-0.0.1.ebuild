# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="zsretry - Zscheile Retry (wait for successfulness) utils"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
sys-apps/coreutils
sys-process/procps"

src_install() {
	dobin zsretry
	dobin zsretryd
}
