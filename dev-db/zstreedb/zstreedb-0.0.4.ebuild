# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake

DESCRIPTION="Zscheile tree text database Management Util"
LICENSE="OPENLDAP"
KEYWORDS="arm amd64 x86"

CMDEPEND="dev-db/lmdb:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND"
