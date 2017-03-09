# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-base

DESCRIPTION="Wait for a host to come up/go done"
KEYWORDS="arm amd64 x86"
COMMON_DEPEND="sys-apps/coreutils
sys-devel/gettext"
DEPEND="$COMMON_DEPEND
sys-devel/make"
RDEPEND="$COMMON_DEPEND
app-shells/bash
net-analyzer/fping"

pkg_postinst() {
	einfo "To run this program as a normal user:"
	einfo "emerge 'net-analyzer/fping' with the 'suid' use flag."
}
