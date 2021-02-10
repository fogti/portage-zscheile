# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake

DESCRIPTION="Zscheile Lowlevel Parsing library"
KEYWORDS="arm amd64 x86"
LICENSE="MIT"

HOMEPAGE="https://github.com/zserik/libzsparsell.git"

DEPEND="${DEPEND}
	dev-libs/libowlevelzs"

RDEPEND="${RDEPEND}
	dev-libs/libowlevelzs"
