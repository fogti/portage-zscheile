# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DUNE_PKG_NAME="${PN}"
DESCRIPTION="SAT-based package dependency solver"
HOMEPAGE="https://github.com/0install/0install"
SRC_URI="https://github.com/0install/0install/releases/download/v${PV}/0install-${PV}.tbz"
S="${WORKDIR}/0install-${PV}"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt test"

RDEPEND="
	>=dev-lang/ocaml-4.08:=[ocamlopt=]
"
DEPEND="${RDEPEND}"
BDEPEND="test? ( dev-ml/ounit2 )"

RESTRICT="test? ( test )"

QA_FLAGS_IGNORED='.*'

src_compile() {
	dune-compile "${PN}"
}

src_test() {
	dune-test "${PN}"
}
