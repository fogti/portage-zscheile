# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="zstab - Zscheile Table Management"
KEYWORDS="arm amd64 x86"
RDEPEND="sys-apps/coreutils
sys-apps/grep"

src_install() {
	dobin zstab
}
