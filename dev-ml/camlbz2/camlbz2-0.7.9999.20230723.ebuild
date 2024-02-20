# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

AT_M4DIR="m4"
inherit autotools findlib dune

DESCRIPTION="OCaml bindings for libbz (AKA, bzip2)"
HOMEPAGE="https://gitlab.com/irill/camlbz2"

# LOL
COMMIT="9c4e7fef63a3fdb49fbcffc84058ecc30e9b23f3"
SRC_URI="https://gitlab.com/kit-ty-kate/camlbz2/-/archive/${COMMIT}/camlbz2-${COMMIT}.tar.bz2 -> ${P}.tar.bz2"
S="${WORKDIR}/camlbz2-${COMMIT}"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"

DEPEND="
	app-arch/bzip2
	>=dev-lang/ocaml-5:=[ocamlopt]
"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	mv "${S}/bz2.opam" "${S}/${PN}.opam" || die 
}
