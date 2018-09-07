# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake git-r3

DESCRIPTION="ZPRD - Zscheile Peer Routing Daemon"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="GPL-3"

IUSE="+daemontools +tbb +pingd"
REQUIRED_USE="pingd? ( daemontools )"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zprd.git"

CMDEPEND="dev-libs/libowlevelzs
	tbb? ( dev-cpp/tbb )"

DEPEND="${DEPEND}
	${CMDEPEND}"

RDEPEND="sys-apps/iproute2
	daemontools? (
		sys-apps/grep
		virtual/daemontools
		pingd? ( net-misc/iputils )
	)
	${CMDEPEND}"

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md docs/files/CONF docs/files/zprd.conf

	if use daemontools; then
		echo 'install service files'
		local services=zprd
		use pingd && services+=" zprpd"
		for i in $services; do
			echo " - $i"
			dodir "/etc/${i}"
			cp -R -t "${D}/etc" "${S}/docs/service/${i}/" || die 'install service files failed'
		done
	fi
}
