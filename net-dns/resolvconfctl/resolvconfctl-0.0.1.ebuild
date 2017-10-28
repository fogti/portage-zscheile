# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base

DESCRIPTION="resolvconfctl - another /etc/resolv.conf manager"
KEYWORDS="arm amd64 x86"
DEPEND="!net-dns/resolvconf-gentoo
!net-dns/openresolv"

RDEPEND="$DEPEND"

src_install() {
	exeinto /sbin
	for file in resolvconfctl; do
		echo "install $file"
		doexe "${file}"
	done
}

pkg_postinst() {
	if ! has_version "$CATEGORY/$PN" || ! [ -d "$ROOT/etc/resolv.conf.d" ]; then
		ebegin "Initialize $ROOT/etc/resolv.conf.d"
		"$ROOT/sbin/resolvconfctl" default
		eend $?
	fi
}
