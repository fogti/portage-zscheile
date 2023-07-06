# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zs-minimal

DESCRIPTION="Zscheile utilities to deal with text based name service databases"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-apps/grep
sys-apps/moreutils"

src_install() {
	dobin zstxtns-merge
	dobin zstxtns-unmerge
}
