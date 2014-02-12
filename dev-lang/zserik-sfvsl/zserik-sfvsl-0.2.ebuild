# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik Simple Formula Variable Substitution Language - simple replace variables"

KEYWORDS="x86"

RDEPEND="sys-apps/coreutils
sys-apps/sed"

src_install() {
	dobin sfvsl
}
