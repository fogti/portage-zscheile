# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-git-cmake

DESCRIPTION="Zscheile tree text database Management Util 2"
LICENSE="GPL-2"

CMDEPEND="dev-db/rocksdb:="

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"
