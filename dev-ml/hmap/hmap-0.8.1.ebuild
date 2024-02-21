# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib opam

DESCRIPTION="Heterogeneous value maps for OCaml"
HOMEPAGE="https://erratique.ch/software/hmap https://github.com/dbuenzli/hmap"
SRC_URI="https://erratique.ch/software/${PN}/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt test"
RESTRICT="!test? ( test )"

RDEPEND=">=dev-lang/ocaml-4.02:=[ocamlopt=]"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-ml/findlib
	dev-ml/ocamlbuild
	dev-ml/topkg:*
"

src_compile() {
	ocaml pkg/pkg.ml build --tests $(usex test 'true' 'false') || die
}

src_test() {
	ocaml pkg/pkg.ml test _build/test/test.native || die
}
