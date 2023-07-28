# Copyright 2019-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit systemd

DESCRIPTION="a collection of utilities simplifying secure store-and-forward files, mail and command exchanging"
HOMEPAGE="http://www.nncpgo.org/"
SLOT="0"
LICENSE="GPL-3"
SRC_URI="http://www.nncpgo.org/download/nncp-8.8.3.tar.xz"

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
