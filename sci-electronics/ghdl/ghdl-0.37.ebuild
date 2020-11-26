# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ADA_COMPAT=( gnat_2017 gnat_2018 gnat_2019 )
inherit ada

DESCRIPTION="VHDL 2008/93/87 simulator"
HOMEPAGE="http://ghdl.free.fr/"
SRC_URI="https://github.com/ghdl/ghdl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

IUSE=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

REQUIRED_USE="${ADA_REQUIRED_USE}"
DEPEND="${ADA_DEPS}"
RDEPEND="${DEPEND}"

src_configure() {
	ada_export GCC GNATMAKE
	./configure
}

src_compile() {
	ada_export GCC GNATMAKE
	emake GCC="${GCC}" GNATMAKE="${GNATMAKE}"
}
