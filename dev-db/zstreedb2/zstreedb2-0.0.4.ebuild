# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-cmake

DESCRIPTION="Zscheile tree text database Management Util 2"
LICENSE="GPL-2"
KEYWORDS="arm amd64 x86"

CMDEPEND="dev-db/rocksdb:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND"
