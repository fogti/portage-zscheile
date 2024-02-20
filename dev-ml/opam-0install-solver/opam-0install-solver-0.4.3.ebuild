# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Opam solver using 0install backend using the CUDF interface"
HOMEPAGE="https://github.com/ocaml-opam/${PN}"
SRC_URI="https://github.com/ocaml-opam/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${P}"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.08:=[ocamlopt=]
	dev-ml/0install-solver:=
	dev-ml/cudf:=
	dev-ml/fmt:=
"
DEPEND+="${RDEPEND}"

# missing test data
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
