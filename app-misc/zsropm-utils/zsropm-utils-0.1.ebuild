# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="Utilities for the Zscheile Rollout Package Manager"
KEYWORDS="arm amd64 x86"
RDEPEND="app-misc/zsropm
app-shells/bash"

src_install() {
	dobin zsropm-state
}
