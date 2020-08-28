# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-minimal
DESCRIPTION="Zscheile Do-It-During Process Spawning Helper"
KEYWORDS="amd64 arm x86"

src_install() {
	dobin zsdoitduring
}
