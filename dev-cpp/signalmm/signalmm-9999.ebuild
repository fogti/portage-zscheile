# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 zserik-minimal

DESCRIPTION="Signal MM - a header-only signal slot system written in C++11"

KEYWORDS="~amd64 x86"
SRC_URI=""
EGIT_REPO_URI="git://github.com/zserik/signalmm.git"

src_install() {
	insinto /usr/include
	doins signalmm.h
}
