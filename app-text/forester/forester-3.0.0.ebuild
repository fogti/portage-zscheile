# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="A tool for tending mathematical forests"
HOMEPAGE="https://sr.ht/~jonsterling/forester/"
SRC_URI="https://git.sr.ht/~jonsterling/ocaml-${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/ocaml-${P}"

LICENSE="GPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-5.0:=[ocamlopt?]
	>=dev-ml/algaeff-2.0.0:=
	>=dev-ml/asai-0.2.0:=
	>=dev-ml/bwd-2.3.0:=
	>=dev-ml/cmdliner-1.2.0:=
	>=dev-ml/eio-0.13:=
	>=dev-ml/menhir-20211230:=
	>=dev-ml/ocamlgraph-2.1.0:=
	>=dev-ml/ptime-1.1.0:=
	>=dev-ml/xmlm-1.4.0:=
	>=dev-ml/yuujinchou-5.1.0:=
"
DEPEND="${RDEPEND}
	>=dev-ml/dune-3.7
	dev-ml/dune-build-info:*
	dev-ml/ppx_deriving:=
"

QA_FLAGS_IGNORED='.*'
