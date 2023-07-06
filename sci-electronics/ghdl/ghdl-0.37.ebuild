# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ADA_COMPAT=( gnat_2017 gnat_2018 gnat_2019 )
inherit ada multilib

DESCRIPTION="VHDL 2008/93/87 simulator"
HOMEPAGE="http://ghdl.free.fr/"
SRC_URI="https://github.com/ghdl/ghdl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

IUSE="synth"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

# Since v0.37, GHDL’s synthesis features require GCC >=8.1, due to some new GNAT
# features which are not available in previous releases. Users with older
# versions (who don’t need synthesis) can configure GHDL with option --disable-synth.
REQUIRED_USE="${ADA_REQUIRED_USE}
	synth? ( ada_target_gnat_2019 )
"
DEPEND="${ADA_DEPS}"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed -e 's#$(prefix)/lib$#$(prefix)/'"$(get_libdir)"'#g' -i "${S}/Makefile.in" \
		|| die 'unable to fix library install path'
}

src_configure() {
	ada_export GCC GNATMAKE
	./configure --prefix="${EPREFIX}"/usr --disable-werror \
		$(use_enable synth)
}

src_compile() {
	ada_export GCC GNATMAKE
	emake GCC="${GCC}" GNATMAKE="${GNATMAKE}"
}
