# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-git-cmake
DESCRIPTION="ZSconfuz-alt - an experimental parallel configure program"
LICENSE="ISC"
DEPEND="${DEPEND}
	dev-util/zsconfuz-common"
RDEPEND="dev-util/ninja
	dev-util/zsconfuz-common"
