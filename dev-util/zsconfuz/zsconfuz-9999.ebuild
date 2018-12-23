# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-git-cmake

DESCRIPTION="ZSconfuz - an experimental parallel configure program"
LICENSE="ISC"

CMNDEPEND="
	>=dev-libs/libowlevelzs-0.0.3
	virtual/zsys-kqueue"

DEPEND="${DEPEND}
	${CMNDEPEND}"

RDEPEND="${RDEPEND}
	${CMNDEPEND}"
