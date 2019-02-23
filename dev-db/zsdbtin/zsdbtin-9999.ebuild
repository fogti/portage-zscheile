# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-git-cmake

DESCRIPTION="Zscheile Database 7 tin"
LICENSE="MIT"

CMDEPEND="dev-db/lmdb:=
	>=dev-libs/libowlevelzs-0.0.3:="

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"
