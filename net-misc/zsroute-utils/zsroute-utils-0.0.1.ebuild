# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-base

DESCRIPTION="Zscheile Routing Utilities"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
	sys-apps/grep
	sys-apps/iproute2
	virtual/awk
"

src_install() {
	dobin eqif-reply
}
