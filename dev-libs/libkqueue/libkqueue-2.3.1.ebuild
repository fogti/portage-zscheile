# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils versionator

DESCRIPTION="Portable implementation of the kqueue() and kevent() system calls"
HOMEPAGE="https://github.com/mheily/${PN}"
MY_PV=$(replace_version_separator 3 '-')
MY_P="${PN}-${MY_PV}"

SRC_URI="https://github.com/mheily/${PN}/archive/v${MY_PV}.tar.gz -> ${MY_P}.tar.gz"
KEYWORDS="~arm amd64 x86"

LICENSE="BSD"
SLOT="0"
IUSE=""

pkg_postinst() {
	ewarn "This package may introduce compilation failures in dev-lang/python"
	ewarn "The python '_select' module may fail to compile"
}
