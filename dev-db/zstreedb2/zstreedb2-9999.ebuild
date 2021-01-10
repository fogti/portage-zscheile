# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-git-cmake

DESCRIPTION="Zscheile tree text database Management Util 2"
LICENSE="GPL-2"

CMDEPEND="dev-libs/rocksdb:="

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"
