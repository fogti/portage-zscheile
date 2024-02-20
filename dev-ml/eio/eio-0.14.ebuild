# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Effect-based direct-style IO mainloop"
HOMEPAGE="https://github.com/ocaml-multicore/eio"
SRC_URI="https://github.com/ocaml-multicore/${PN}/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.08:=[ocamlopt?]
	>=dev-ml/fmt-0.8.9:=
	>=dev-ml/logs-0.7.0:=
	dev-ml/iomux:=
	dev-ml/mtime:=
	dev-ml/psq:=
	>=dev-ml/uring-0.7:=
"
DEPEND="${RDEPEND}
	>=dev-ml/dune-3.9
"

# too much stuff to package for that...
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
