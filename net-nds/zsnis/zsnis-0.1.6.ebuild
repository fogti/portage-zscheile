# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="ZSNIS - Zscheile Secure Network Information Service"
KEYWORDS="amd64 x86"
IUSE="server"

RDEPEND="net-analyzer/cryptcat
server? (
	sys-process/procps
	virtual/daemontools
)"

src_install() {
	dobin zsniclient

	if use server; then
		dodir /etc/zsnis
		exeinto /etc/zsniserver
		doexe run
		exeinto /etc/zsniserver/log
		newexe logrun run
	fi
}

pkg_postinst() {
	if use server; then
		einfo "To activate the server:"
		einfo " 1. ln -s -t /service /etc/zsniserver"
		einfo " 2. rc-update add svscan"
		einfo " 3. /etc/init.d/svscan restart"
	fi
}
