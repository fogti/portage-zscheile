# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
inherit zserik-cmake

EXPORT_FUNCTIONS src_install

zs-zsropm_src_install() {
	dodir /{etc,usr}/zsropm
	keepdir /var/lib/zsropm
	cmake-utils_src_install
	dodoc -r doc/*
}
