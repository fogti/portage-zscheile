# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal
DESCRIPTION="Zscheile Do-It-During Process Spawning Helper"
KEYWORDS="amd64 arm x86"

src_install() {
	dobin zsdoitduring
}
