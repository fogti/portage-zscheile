# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-cmake git-r3

DESCRIPTION="Zscheile Rollout Package Manager"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="GPL-2+"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zsropm.git"
HOMEPAGE="${EGIT_REPO_URI}"

RDEPEND="$RDEPEND
app-arch/gzip
app-arch/tar
app-crypt/gnupg
app-misc/zout-ng
>=app-misc/zsgcfgfpath-0.0.2
net-misc/curl
sys-apps/coreutils
sys-apps/diffutils
sys-apps/findutils
sys-apps/moreutils
sys-apps/portage
sys-apps/sandbox"

src_install() {
	dodir /{etc,usr}/zsropm
	keepdir /var/lib/zsropm
	cmake-utils_src_install
	dodoc -r doc/*
}
