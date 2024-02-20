# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="OCaml tool to find/use non-standard packages (transitional package)"
HOMEPAGE="http://projects.camlcity.org/projects/findlib.html"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~hppa ~ia64 ~loong ~ppc ppc64 ~riscv x86 amd64-linux x86-linux ~ppc-macos"
IUSE="+ocamlopt"

RDEPEND=">=dev-lang/ocaml-5.0.0:=[ocamlopt?]"
