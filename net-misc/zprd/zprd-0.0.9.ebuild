# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="ZPRD - Zscheile Peer Routing Daemon"
KEYWORDS="arm amd64 x86"
LICENSE="GPL-3"

RDEPEND="sys-apps/grep
	sys-apps/iproute2
	virtual/daemontools"

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md doc/files/CONF doc/files/zprd.conf

	echo 'install service files'
	dodir /etc/zprd
	cp -R -t "${D}/etc" "${S}/doc/srv/service/zprd/" || die 'install service files failed'
}

pkg_postinst() {
	if ! has_version 'net-misc/zprd'; then
		einfo 'To activate the server:'
		einfo ' 1. setup /etc/zprd.conf'
		einfo ' 2. ln -s -t /service /etc/zprd'
		einfo ' 3. rc-update add svscan'
		einfo ' 4. /etc/init.d/svscan restart'
	fi
}
