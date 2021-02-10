# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-git cmake
DESCRIPTION="ZSconfuz-alt - an experimental parallel configure program"
LICENSE="ISC"
DEPEND="${DEPEND}
	dev-util/zsconfuz-common"
RDEPEND="dev-util/ninja
	dev-util/zsconfuz-common"
