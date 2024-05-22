# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Type-driven code generation for OCaml"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_deriving"
SRC_URI="https://github.com/ocaml-ppx/ppx_deriving/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64 x86"
IUSE="+ocamlopt test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-ml/ppx_derivers:=[ocamlopt?]
	>=dev-ml/ppxlib-0.32.0:=[ocamlopt?]
	dev-ml/findlib:=[ocamlopt?]
	|| (
		>=dev-lang/ocaml-5[ocamlopt?]
		dev-ml/ocaml-migrate-parsetree[ocamlopt?]
	)
"
DEPEND="${RDEPEND}
	dev-ml/cppo:*[ocamlopt?]
	test? ( dev-ml/ounit2:* )"
