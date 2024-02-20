# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Backward lists"
HOMEPAGE="https://github.com/RedPRL/ocaml-bwd"
SRC_URI="https://github.com/RedPRL/ocaml-${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/ocaml-${P}"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt test"

RDEPEND="
	>=dev-lang/ocaml-4.12:=[ocamlopt=]
"
DEPEND="${RDEPEND}
	test? ( >=dev-ml/qcheck-0.18:* )"

RESTRICT="!test? ( test )"

QA_FLAGS_IGNORED='.*'
