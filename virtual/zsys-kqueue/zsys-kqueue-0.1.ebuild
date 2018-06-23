# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-virtual

DESCRIPTION="Erik Zscheile: virtual for kqueue(2) - native vs libkqueue"
KEYWORDS="arm amd64 x86"
RDEPEND="!x86-fbsd? ( !amd64-fbsd? ( dev-libs/libkqueue ) )"
