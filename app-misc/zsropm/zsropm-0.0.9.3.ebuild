# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake eutils

DESCRIPTION="Zscheile Rollout Package Manager"
KEYWORDS="arm amd64 x86"
RDEPEND="app-arch/gzip
app-arch/tar
app-misc/zout-ng
>=app-misc/zsgcfgfpath-0.0.2
app-shells/bash
>=dev-libs/zsadv-0.0.5
>=dev-util/zsgenheader-0.0.3
>=dev-util/zsgtrp-0.0.4
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
