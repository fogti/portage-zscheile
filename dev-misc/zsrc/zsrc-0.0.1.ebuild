# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-minimal

DESCRIPTION="zsrc - Zscheile Rudimentary service Control framework"

KEYWORDS="arm amd64 x86"

RDEPEND="sys-apps/coreutils
sys-process/procps"

src_install() {
    dobin zsrc-run
}
