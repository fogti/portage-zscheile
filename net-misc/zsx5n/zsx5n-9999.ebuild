# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-git-cmake

DESCRIPTION="5. Zscheile Network Service"
RDEPEND="sys-apps/xinetd"

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md

	echo 'install xinetd files'
	dodir /etc
	cp -R -t "${D}/etc" "${S}/xinetd.d" || die 'install xinetd files failed'
}
