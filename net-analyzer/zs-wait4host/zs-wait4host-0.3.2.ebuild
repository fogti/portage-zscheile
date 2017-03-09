# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-minimal

DESCRIPTION="Wait for a host to come up/go done"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
net-analyzer/fping
sys-apps/coreutils"

src_install() {
	for i in zs-guess-fping zs-wait4host zs-wait4host-inf; do
		echo install $i
		dobin $i
	done
}

pkg_postinst() {
	einfo "To run this program as a normal user:"
	einfo "emerge 'net-analyzer/fping' with the 'suid' use flag."
}
