# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="Zscheile Network Launcher"
KEYWORDS="amd64 arm x86"

RDEPEND="$RDEPEND
	sys-apps/grep
	sys-apps/moreutils
	sys-apps/openrc
	sys-apps/sed
	sys-apps/xinetd
"

src_install() {
	dobin zsnetlaunch
	dobin zsnl-auth-passwd

	insinto /etc/xinetd.d
	newins zsnetlaunch.xinetd zsnetlaunch

	exeinto /etc/zsnetlaunch
	doexe auth
	exeinto /usr/libexec/zsnetlaunch
	doexe SRV
}

pkg_postinst() {
	einfo "You should configure your authentification in /etc/zsnetlaunch/auth"
}
