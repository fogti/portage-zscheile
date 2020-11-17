# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{7,8,9} )
inherit distutils-r1 xdg-utils

DESCRIPTION="Metadata anonymisation toolkit"
HOMEPAGE="https://0xacab.org/jvoisin/mat2.git"
SRC_URI="https://0xacab.org/jvoisin/${PN}/-/archive/${PV}/${P}.zip"
LICENSE="LGPL-3+"

# media-libs/exiftool is untested on arm
KEYWORDS="amd64 x86"
SLOT="0"
IUSE="nautilus"

CMDEPEND="
${PYTHON_DEPS}
app-text/poppler:*[introspection]
dev-python/pycairo[${PYTHON_USEDEP}]
dev-python/pygobject:3[${PYTHON_USEDEP}]
media-libs/exiftool
media-libs/mutagen[${PYTHON_USEDEP}]
x11-libs/gdk-pixbuf:2[introspection]"

DEPEND+="${CMDEPEND}
dev-python/setuptools[${PYTHON_USEDEP}]"

RDEPEND+="${CMDEPEND}
nautilus? ( dev-python/nautilus-python:* )"

python_install() {
	distutils-r1_python_install
}

python_install_all() {
	if use nautilus; then
		insinto /usr/share/nautilus-python/extensions
		doins nautilus/mat2.py
	fi

	doman doc/mat2.1

	distutils-r1_python_install_all
}

pkg_postinst() {
	xdg_icon_cache_update
}
pkg_postrm() {
	xdg_icon_cache_update
}
