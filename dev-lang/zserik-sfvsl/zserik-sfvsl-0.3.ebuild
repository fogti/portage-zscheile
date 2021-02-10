# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-perl
DESCRIPTION="ZSerik Simple Formula Variable Substitution Language - simple replace variables"
KEYWORDS="amd64 arm x86"

src_install() {
	exeinto /usr/bin
	echo install zs-sfvsl
	doexe zs-sfvsl

	zs-perl_src_install
}
