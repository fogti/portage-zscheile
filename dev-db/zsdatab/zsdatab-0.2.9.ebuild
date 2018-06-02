# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile data text table Management"
LICENSE="MIT"
SLOT="0/0.2.10"
KEYWORDS="arm amd64 x86"

CMDEPEND="sys-libs/zlib"

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND
app-shells/bash"
