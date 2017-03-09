# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake eutils

DESCRIPTION="Zscheile Rollout Package Manager"
KEYWORDS="arm amd64 x86"

RDEPEND="$RDEPEND
app-arch/gzip
app-arch/tar
app-misc/zout-ng
>=app-misc/zsgcfgfpath-0.0.2
app-shells/bash
net-misc/curl
sys-apps/coreutils
sys-apps/diffutils
sys-apps/findutils
sys-apps/portage"

src_install() {
	dodir /etc/zsropm
	dodir /usr/zsropm
	dodir /var/lib/zsropm
	cmake-utils_src_install
}
