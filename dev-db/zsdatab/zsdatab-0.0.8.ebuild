# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile data text table Management"
LICENSE="MIT"
KEYWORDS="arm amd64 x86"

RDEPEND="$RDEPEND
app-shells/bash
sys-apps/coreutils
virtual/zcmake-libfindmacros"
