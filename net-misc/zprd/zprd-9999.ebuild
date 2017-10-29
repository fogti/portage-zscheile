# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake git-r3

DESCRIPTION="ZPRD - Zscheile Peer Routing Daemon"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="GPL-3"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zprd.git"

RDEPEND="sys-apps/grep
	sys-apps/iproute2
	virtual/daemontools"

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md docs/files/CONF docs/files/zprd.conf

	echo 'install service files'
	dodir /etc/zprd
	cp -R -t "${D}/etc" "${S}/docs/service/zprd/" || die 'install service files failed'
}
