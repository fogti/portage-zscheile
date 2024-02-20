# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Unix IO Multiplexer bindings"
HOMEPAGE="https://github.com/haesbaert/ocaml-iomux"
SRC_URI="https://github.com/haesbaert/ocaml-${PN}/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt test"

RDEPEND=">=dev-lang/ocaml-4.08:=[ocamlopt?]"
DEPEND="${RDEPEND}
	>=dev-ml/dune-3.6
	dev-ml/dune-configurator:*
	test? ( dev-ml/alcotest:* )
"

# too much stuff to package for that...
RESTRICT="!test? ( test )"

QA_FLAGS_IGNORED='.*'
