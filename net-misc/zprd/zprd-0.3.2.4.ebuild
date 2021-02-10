# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake
DESCRIPTION="ZPRD - Zscheile Peer Routing Daemon"
KEYWORDS="arm amd64 x86"
LICENSE="GPL-3"
HOMEPAGE="https://github.com/zserik/zprd.git"

IUSE="+daemontools debug +ipv6 +pingd"
REQUIRED_USE="pingd? ( daemontools )"
RESTRICT="debug? ( strip )"

CMDEPEND="dev-libs/libowlevelzs"

DEPEND="${DEPEND}
	${CMDEPEND}"

RDEPEND="sys-apps/iproute2
	daemontools? (
		sys-apps/grep
		virtual/daemontools
		pingd? ( net-misc/iputils )
	)
	${CMDEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_use debug DEBUG)
		$(cmake-utils_use_use ipv6 IPV6)
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md docs/files/CONF docs/files/zprd.conf

	if use daemontools; then
		echo 'install service files'
		local services=zprd
		use pingd && services+=' zprpd'
		for i in $services; do
			echo " - $i"
			dodir "/etc/${i}"
			cp -R -t "${D}/etc" "${S}/docs/service/${i}/" || die 'install service files failed'
		done
	fi
}
