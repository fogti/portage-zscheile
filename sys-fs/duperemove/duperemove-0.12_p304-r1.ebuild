# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Btrfs and xfs deduplication utility"
HOMEPAGE="https://github.com/markfasheh/duperemove/"
REV="7a5c7fbb59a45162ac4ab70ce8eaf15050b20cbd"
SRC_URI="
	https://github.com/markfasheh/duperemove/archive/${REV}.tar.gz
		-> ${PN}-${REV}.gh.tar.gz
"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc64 x86"
IUSE=""

RDEPEND="
	dev-db/sqlite:3
	dev-libs/glib:2"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}-${REV}"

src_compile() {
	emake VERSION="${PV}" IS_RELEASE=1 CC="$(tc-getCC)" CFLAGS="${CFLAGS} -Wall"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
}
