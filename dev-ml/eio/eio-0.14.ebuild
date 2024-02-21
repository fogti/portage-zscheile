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
	>=dev-ml/bigstringaf-0.9.0:=
	>=dev-ml/cstruct-6.0.1:=
	>=dev-ml/domain-local-await-0.1.0:=
	>=dev-ml/fmt-0.8.9:=
	dev-ml/hmap:=
	dev-ml/iomux:=
	>=dev-ml/logs-0.7.0:=
	dev-ml/lwt-dllist:=
	>=dev-ml/mtime-2.0.0:=
	>=dev-ml/optint-0.1.0:=
	>=dev-ml/psq-0.2.0:=
	>=dev-ml/uring-0.7:=
"
DEPEND="${RDEPEND}
	>=dev-ml/dune-3.9
"

# too much stuff to package for that...
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
