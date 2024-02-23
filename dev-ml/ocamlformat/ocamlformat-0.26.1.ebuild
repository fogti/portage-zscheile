# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Auto-formatter for OCaml code"
HOMEPAGE="https://github.com/ocaml-ppx/ocamlformat"
SRC_URI="https://github.com/ocaml-ppx/${PN}/releases/download/${PV}/${P}.tbz"

LICENSE="|| ( MIT LGPL-2.1-with-linking-exception )"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt test"

RDEPEND="
	>=dev-lang/ocaml-4.08:=
	<dev-lang/ocaml-5.2
	>=dev-ml/cmdliner-1.1:=
	dev-ml/ocp-indent:=
	>=dev-ml/re-1.10.3:=
	dev-ml/uuseg:=
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/0-either.patch"
)

BDEPEND="test? ( dev-ml/ounit2 >=dev-ml/cmdliner-1.2:= )"
RESTRICT="!test? ( test )"
QA_FLAGS_IGNORED='.*'
