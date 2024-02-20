# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Efficient integer types on 64-bit architectures"
HOMEPAGE="https://github.com/mirage/optint"
SRC_URI="https://github.com/mirage/${PN}/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND=">=dev-lang/ocaml-4.07:=[ocamlopt=]"
DEPEND="${RDEPEND}"

# too much stuff to package for that...
RESTRICT="test"

QA_FLAGS_IGNORED='.*'
