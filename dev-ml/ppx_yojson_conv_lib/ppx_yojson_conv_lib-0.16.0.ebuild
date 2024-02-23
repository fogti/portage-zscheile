# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Runtime lib for ppx_yojson_conv"
HOMEPAGE="https://github.com/janestreet/ppx_yojson_conv_lib"
SRC_URI="https://ocaml.janestreet.com/ocaml-core/v$(ver_cut 1-2)/files/${PN}-v${PV}.tar.gz"
S="${WORKDIR}/${PN}-v${PV}"

LICENSE="MIT"
SLOT="0/$(ver_cut 1-2)"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.14:=[ocamlopt?]
	>=dev-ml/yojson-1.7:=[ocamlopt?]"
DEPEND="${RDEPEND}"
