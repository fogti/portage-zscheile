# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-minimal

DESCRIPTION="Zscheile tree text database Management Util"
LICENSE="OPENLDAP"
KEYWORDS="arm amd64 x86"

CMDEPEND=">=sys-devel/gcc-4.8.5:=[cxx]
dev-db/lmdb:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND"

src_install() {
  dobin zstreedb
}
