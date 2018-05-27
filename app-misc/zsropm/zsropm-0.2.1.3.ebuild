# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zs-zsropm eutils

DESCRIPTION="Zscheile Rollout Package Manager"
KEYWORDS="arm amd64 x86"
LICENSE="GPL-2+"

CMDEPEND="$CMDEPEND
>=app-misc/zout-ng-0.0.3.1:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND
app-arch/gzip
app-arch/tar
app-crypt/gnupg
>=app-misc/zsgcfgfpath-0.0.2
net-misc/curl
sys-apps/coreutils
sys-apps/diffutils
sys-apps/findutils
sys-apps/moreutils
sys-apps/portage
sys-apps/sandbox"
