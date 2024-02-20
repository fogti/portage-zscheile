# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# We are opam
OPAM_INSTALLER_DEP=" "
OPAM_SKIP_VALIDATION=yes
inherit dune

DESCRIPTION="Core installer for opam packages"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/releases/download/${PV/_/-}/opam-full-${PV/_/-}.tar.gz"
S="${WORKDIR}/opam-full-${PV/_/-}"
OPAM_INSTALLER="${S}/_build/install/default/bin/opam-installer"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv ~x86"
IUSE="+ocamlopt static"
RESTRICT="test" # sandbox not working

RDEPEND="
	>=dev-lang/ocaml-4.02.3:=
	dev-ml/ocaml-base64:=
	dev-ml/cmdliner:=
	>=dev-ml/dose3-6:=
	dev-ml/jsonm:=
	dev-ml/re:=
	>=dev-ml/mccs-1.1.17:=
	dev-ml/spdx_licenses:=
	dev-ml/swhid_core:=
	dev-ml/opam-file-format:=
"
DEPEND="${RDEPEND}
	dev-ml/findlib"

src_configure() {
	econf \
		--prefix="${EPREFIX}/usr" \
		--with-mccs \
		--with-vendored-deps \
		--docdir="${EPREFIX}/usr/share/doc/${PF}" \
		--mandir="${EPREFIX}/usr/share/man" \
		$(use_enable static)
}
