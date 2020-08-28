# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-git-cmake

DESCRIPTION="Zscheile Database 7 tin"
LICENSE="MIT"

CMDEPEND="dev-db/lmdb:=
	>=dev-libs/libowlevelzs-0.0.3:="

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"
