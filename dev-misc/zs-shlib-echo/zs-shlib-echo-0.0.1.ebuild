# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base

DESCRIPTION="Zscheile Shell Library - Echo"

KEYWORDS="amd64 arm x86"
IUSE=""
RDEPEND=""

src_install() {
	insinto /usr/share/zs-shlib
	doins echo.sh
}
