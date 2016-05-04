# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="zsrc - Zscheile Resource Control framework"
KEYWORDS="arm amd64 x86"
RDEPEND="net-misc/iputils
sys-apps/coreutils
sys-apps/grep
sys-process/procps"

src_install() {
    dobin zsrc
}
