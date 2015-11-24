# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-minimal

DESCRIPTION="ZADist - Zscheile Automatic Distributor Client"
KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils
net-misc/rsync
virtual/cron"

src_install() {
	echo "install zadist"
	dobin zadist

	insinto /etc
	echo "install zadist.conf.skel"
	doins zadist.conf.skel

	insinto /etc/cron.d
	echo "install cron.d/zadist"
	newins zadist.cron zadist
}

pkg_postinst() {
	einfo "To setup, run 'zadist --setup DISTHOST'."
	einfo "On the host DISTHOST: "
	einfo " 1. emerge rsync"
	einfo " 2. create the rsyncd export 'zadist'."
	einfo " 3. start rsyncd (and rc-update add rsyncd)"
}
