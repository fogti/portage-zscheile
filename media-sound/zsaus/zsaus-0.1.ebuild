# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal
DESCRIPTION="Zscheile Remote Audio Suite using ALSA"
KEYWORDS="amd64 arm x86"
RDEPEND="app-shells/bash
media-sound/alsa-utils
net-analyzer/netcat
net-misc/socat
sys-process/procps"

src_install() {
	dobin zsauc
	dobin zsauplay
	dobin zsausrv
}
