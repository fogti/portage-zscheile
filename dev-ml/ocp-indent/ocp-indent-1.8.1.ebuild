# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="A simple tool to indent OCaml programs"
HOMEPAGE="http://www.typerex.org/ocp-indent.html"
SRC_URI="https://github.com/OCamlPro/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-ml/cmdliner-1.0:="
DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED='.*'
