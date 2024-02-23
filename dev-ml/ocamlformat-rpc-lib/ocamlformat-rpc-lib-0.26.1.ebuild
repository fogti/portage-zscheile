# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DUNE_PKG_NAME="${PN}"
inherit dune

DESCRIPTION="Auto-formatter for OCaml code (RPC mode)"
HOMEPAGE="https://github.com/ocaml-ppx/ocamlformat"
SRC_URI="https://github.com/ocaml-ppx/ocamlformat/releases/download/${PV}/ocamlformat-${PV}.tbz"
S="${WORKDIR}/ocamlformat-${PV}"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.08:=
	>=dev-ml/csexp-1.4:=
"
DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED='.*'

src_compile() {
	dune-compile "${PN}"
}

src_test() {
	dune-test "${PN}"
}

src_install() {
	dune-install "${PN}"
}
