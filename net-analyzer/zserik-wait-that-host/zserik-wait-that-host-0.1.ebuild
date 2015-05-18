# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-minimal

DESCRIPTION="Wait that Host is alive"

KEYWORDS="amd64 x86"
RDEPEND="net-analyzer/fping
zserik-base/zserik-common"

src_install() {
	dobin wait-that-host-alive
}
