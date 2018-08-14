# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-cmake git-r3

DESCRIPTION="Zscheile Lowlevel Parsing library"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="MIT"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/libzsparsell.git"
HOMEPAGE="${EGIT_REPO_URI}"

DEPEND="${DEPEND}
	dev-libs/libowlevelzs"

RDEPEND="${RDEPEND}
	dev-libs/libowlevelzs"
