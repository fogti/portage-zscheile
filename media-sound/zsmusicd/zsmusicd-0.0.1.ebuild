# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

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
