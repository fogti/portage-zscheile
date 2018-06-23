# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-cmake git-r3

DESCRIPTION="ZSconfuz - a parallel experimental configure program"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="MIT"

IUSE=""
SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zsconfuz.git"

CMNDEPEND="virtual/zsys-kqueue"

DEPEND="${DEPEND}
	${CMNDEPEND}"

RDEPEND="${RDEPEND}
	${CMNDEPEND}"
