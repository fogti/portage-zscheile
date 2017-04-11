# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="Zscheile Do-It-During Process Spawning Helper"
KEYWORDS="arm amd64 x86"
RDEPEND="sys-apps/coreutils"

src_install() {
	dobin zsdoitduring
}
