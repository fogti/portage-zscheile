# Copyright 2019-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd

DESCRIPTION="a collection of utilities simplifying secure store-and-forward files, mail and command exchanging"
HOMEPAGE="http://www.nncpgo.org/"
SRC_URI="http://www.nncpgo.org/download/nncp-${PV}.tar.xz"
LICENSE="GPL-3"
SLOT="0"

KEYWORDS="~amd64 ~arm ~x86"
RESTRICT="strip"
export GO111MODULE=auto
export EGO_PN="go.cypherpunks.ru/nncp/v8"

BDEPEND="${BDEPEND}
	app-arch/unzip
	>=dev-lang/go-1.20
	dev-util/redo
"
RDEPEND="${RDEPEND}
	acct-user/nncp
"

setup_goflags() {
	# export GO_CFLAGS="$(use yggdrasil || echo '-tags noyggdrasil ' )"
	:
}

src_compile() {
	setup_goflags
	redo all || die
}

src_install() {
	setup_goflags
	PREFIX="${ED}/usr" redo install || die
	for i in nncp-caller nncp-daemon nncp-toss; do
		systemd_newunit "${FILESDIR}/$i.service" "$i.service"
	done
	mv -t "${ED}/usr/share" "${ED}/usr/info"
	mv -T "${ED}/usr/share/doc/${PN}" "${ED}/usr/share/doc/${PN}"
}
