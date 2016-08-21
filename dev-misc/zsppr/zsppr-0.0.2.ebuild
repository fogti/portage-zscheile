# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal perl-functions

DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"
DEPEND="dev-lang/perl"
RDEPEND="$DEPEND"

src_prepare() {
	perl_fix_osx_extra
}

src_configure() {
	perl_check_env
}

src_install() {
	perl_set_version
	exeinto /usr/bin
	echo install zsppr
	doexe zsppr
}
