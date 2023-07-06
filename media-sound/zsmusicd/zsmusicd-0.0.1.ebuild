# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal
DESCRIPTION="Zscheile Music Daemon"
KEYWORDS="amd64 arm x86"
RDEPEND="media-sound/mpg123
sys-apps/util-linux
sys-process/procps"

src_install() {
	dobin zsmusicd
	dobin zsmusic-seturl
	newinitd zsmusicd.initd zsmusicd
}
