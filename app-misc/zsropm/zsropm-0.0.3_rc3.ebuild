# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal eutils

DESCRIPTION="Zscheile Rollout Package Manager"
KEYWORDS="arm amd64 x86"
RDEPEND="app-arch/gzip
app-arch/tar
app-misc/zout-ng
>=app-misc/zsgcfgfpath-0.0.2
app-shells/bash
>=dev-db/zsdatab-0.0.7
net-misc/wget
sys-apps/coreutils
sys-apps/diffutils
sys-apps/findutils
sys-apps/portage
sys-apps/sed
sys-apps/util-linux"

src_install() {
  dodir /etc/zsropm
  dodir /usr/zsropm
  dodir /var/lib/zsropm

  for i in db merge meta mkpkg2 pkginfo rollout update; do
    echo "install zsropm-$i"
    dobin "zsropm-$i"
  done

  insinto /usr/share/zsropm
  doins lib.sh
}
