# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Library to work with Software Heritage persistent identifiers (swhids)"
HOMEPAGE="https://github.com/ocamlpro/${PN}"
SRC_URI="https://github.com/ocamlpro/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.03:=[ocamlopt=]
"
DEPEND="${RDEPEND}"

# missing test data
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
