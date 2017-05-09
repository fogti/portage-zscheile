# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="Zscheile Music Daemon"
KEYWORDS="arm amd64 x86"
RDEPEND="media-sound/mpg123
sys-apps/coreutils
sys-apps/util-linux
sys-process/procps"

src_install() {
	dobin zsmusicd
	dobin zsmusic-seturl
	newinitd zsmusicd.initd zsmusicd
}
