# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="A library for constructing and printing compiler diagnostics"
HOMEPAGE="https://github.com/RedPRL/asai"
SRC_URI="https://github.com/RedPRL/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt test"

RDEPEND="
	>=dev-lang/ocaml-5.0:=
	>=dev-ml/algaeff-2.0:=[ocamlopt?]
	>=dev-ml/bwd-2.2:=[ocamlopt?]
"
DEPEND="${RDEPEND}
	test? ( >=dev-ml/alcotest-1.5:* )
"

RESTRICT="!test? ( test )"

QA_FLAGS_IGNORED='.*'

src_compile() {
	dune-compile asai
}

src_test() {
	dune-test asai
}

src_install() {
	dune-install asai
}
