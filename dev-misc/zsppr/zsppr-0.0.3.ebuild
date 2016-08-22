# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zs-perl

DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"

src_install() {
	exeinto /usr/bin
	echo install zsppr
	doexe zsppr

	zs-perl_src_install
}
