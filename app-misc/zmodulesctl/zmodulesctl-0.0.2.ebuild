# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZModulesCtl - Zscheile Modules Control"

KEYWORDS="arm amd64 x86"

RDEPEND="$RDEPEND
app-shells/bash
sys-apps/coreutils"

src_install() {
    dobin zmodulesctl
}
