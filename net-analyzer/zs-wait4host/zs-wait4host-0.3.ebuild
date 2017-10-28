# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-base

DESCRIPTION="Wait for a host to come up/go done"
KEYWORDS="~arm amd64 x86"
DEPEND="sys-devel/gettext
sys-devel/make"
RDEPEND="net-analyzer/fping
sys-devel/gettext"

pkg_postinst() {
	einfo "To run this program as a normal user:"
	einfo "emerge 'net-analyzer/fping' with the 'suid' use flag."
}
