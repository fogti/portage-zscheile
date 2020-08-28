# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="zsrc - Zscheile Resource Control framework"
KEYWORDS="amd64 arm x86"
RDEPEND="net-misc/iputils
sys-apps/grep
sys-process/procps"

src_install() {
	dobin zsrc
}
