# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="A scheduler independent blocking mechanism"
HOMEPAGE="https://github.com/ocaml-multicore/domain-local-await"
SRC_URI="https://github.com/ocaml-multicore/${PN}/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.12:=[ocamlopt=]
	dev-ml/thread-table:=
"
DEPEND="${RDEPEND}"

# too much stuff to package for that...
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
