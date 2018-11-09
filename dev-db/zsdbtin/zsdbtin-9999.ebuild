# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-git-cmake

DESCRIPTION="Zscheile Database 7 tin"
LICENSE="MIT"

CMDEPEND="dev-db/rocksdb:=
	dev-libs/libowlevelzs:=
	>=dev-libs/libzsnidcode-0.0.1:="

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"
