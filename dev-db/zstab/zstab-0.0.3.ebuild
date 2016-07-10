# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-base autotools

DESCRIPTION="zstab - Zscheile Table Management"
KEYWORDS="amd64 arm x86"

src_prepare() {
  eautoreconf
}
