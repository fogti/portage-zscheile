# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base user

DESCRIPTION="Zscheile Information System - with simple blockchain implementation"
KEYWORDS="amd64 arm x86"

DEPEND="$DEPEND
dev-libs/openssl:="
RDEPEND="$RDEPEND
dev-libs/openssl:=
sys-apps/xinetd"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodir /etc/zisnet
}

pkg_postinst() {
	enewuser zisnet -1 -1 /srv/zisnet
}
