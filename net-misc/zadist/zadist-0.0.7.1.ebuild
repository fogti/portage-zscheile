# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit zserik-minimal

DESCRIPTION="ZADist - Zscheile Automatic Distributor Client"
KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/grep
sys-apps/sed
net-misc/rsync
virtual/cron"

src_install() {
	echo "install zadist"
	dobin zadist
	echo "install cron.d/zadist"
	insinto /etc/cron.d
	newins zadist.cron zadist
	echo "install actions ..."
	dodir /usr/libexec/zadist/actions
	exeinto /usr/libexec/zadist/actions
	insinto /usr/libexec/zadist/actions
	for i in help main setup updconf usage version; do
		echo " - $i"
		doexe actions/$i
		for j in usage help; do
			if [ -f actions/$i.$j ]; then
				echo "   - $j"
				doins actions/$i.$j
			fi
		done
	done
	echo "install action index .public"
	doins actions/.public
	echo "install action helpers ..."
	for i in get_nom; do
		echo " - $i"
		doexe actions/$i
	done
}

pkg_postinst() {
	einfo "To setup, run 'zadist setup DISTHOST'."
	einfo "On the host DISTHOST: "
	einfo " 1. emerge rsync"
	einfo " 2. create the rsyncd export 'zadist'."
	einfo " 3. start rsyncd (and rc-update add rsyncd)"
}
