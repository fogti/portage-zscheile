# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-minimal autotools

DESCRIPTION="zstab - Zscheile Table Management"
KEYWORDS="amd64 arm x86"

src_prepare() {
	eautoreconf
}
