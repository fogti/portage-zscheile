# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-git-cmake

DESCRIPTION="ZSconfuz - a parallel experimental configure program"

CMNDEPEND="
	dev-libs/libowlevelzs
	virtual/zsys-kqueue"

DEPEND="${DEPEND}
	${CMNDEPEND}"

RDEPEND="${RDEPEND}
	${CMNDEPEND}"
