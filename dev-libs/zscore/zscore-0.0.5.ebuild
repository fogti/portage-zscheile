# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-cmake
DESCRIPTION="ZS Core library - C function collection"
# ~arm: blocked on net-analyzer/fping
KEYWORDS="amd64 ~arm x86"
SLOT="0/0-0.0.5"

DEPEND+="
	dev-libs/glib
"
RDEPEND+="
	dev-libs/glib
	net-analyzer/fping
"
