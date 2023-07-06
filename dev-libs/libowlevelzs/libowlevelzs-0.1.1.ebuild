# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake-multilib

DESCRIPTION="Zscheile Lowlevel library"
KEYWORDS="amd64 arm x86"
LICENSE="MIT"
SRC_URI="https://github.com/fogti/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/fogti/${PN}"
SLOT="0/3"
