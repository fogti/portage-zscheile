# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="OCaml bindings for Linux io_uring"
HOMEPAGE="https://github.com/ocaml-multicore/ocaml-uring"
SRC_URI="https://github.com/ocaml-multicore/ocaml-${PN}/releases/download/v${PV}/${P}.tbz"

LICENSE="|| ( ISC MIT )"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.12:=[ocamlopt?]
	>=dev-ml/cstruct-6.0.1:=
	>=dev-ml/fmt-0.8.10:=
	>=dev-ml/optint-0.1.0:=
"
DEPEND="${RDEPEND}
	>=dev-ml/dune-3.0
	dev-ml/dune-configurator:*
"

# too much stuff to package for that...
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
