# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="zstab - Zscheile Table Management"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-apps/grep
sys-apps/sed"

src_install() {
	dobin zstab
}
