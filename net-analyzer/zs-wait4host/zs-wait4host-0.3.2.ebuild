# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="Wait for a host to come up/go done"
KEYWORDS="amd64 ~arm x86"
RDEPEND="net-analyzer/fping"

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
