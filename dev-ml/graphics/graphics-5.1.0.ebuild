# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit dune

DESCRIPTION="Graphics library for OCaml"
HOMEPAGE="https://github.com/ocaml/graphics"
SRC_URI="https://github.com/ocaml/graphics/archive/${PV}.tar.gz -> ${P}.tar.gz"

# WARNING: The 'LICENSE' field doesn't match the description from the
# 'dune-project' file of the project exactly, but I couldn't find a closer match
# > (license "LGPL-2.1 with OCaml linking exception")
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.09.0:=
	>=dev-ml/dune-2.0:*
	dev-ml/dune-configurator:=
	x11-libs/libX11:=
"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
