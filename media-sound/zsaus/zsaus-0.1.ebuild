# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="Zscheile Remote Audio Suite using ALSA"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
media-sound/alsa-utils
|| (
	net-analyzer/netcat
	net-analyzer/netcat6
)
net-misc/socat
sys-process/procps"

src_install() {
	dobin zsauc
	dobin zsauplay
	dobin zsausrv
}
