# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1 gnome2-utils

DESCRIPTION="Metadata anonymisation toolkit"
HOMEPAGE="https://0xacab.org/jvoisin/mat2.git"
SRC_URI="https://0xacab.org/jvoisin/${PN}/-/archive/${PV}/${P}.zip"
LICENSE="LGPL-3+"

KEYWORDS="arm amd64 x86"
SLOT="0"

IUSE="nautilus"

CMDEPEND="${PYTHON_DEPS}
app-text/poppler:*[introspection]
dev-python/pycairo[${PYTHON_USEDEP}]
dev-python/pygobject[${PYTHON_USEDEP}]
media-libs/exiftool
media-libs/mutagen[${PYTHON_USEDEP}]
x11-libs/gdk-pixbuf:2[introspection]"

DEPEND="${DEPEND}
${CMDEPEND}
dev-python/setuptools[${PYTHON_USEDEP}]"

RDEPEND="${RDEPEND}
${CMDEPEND}
nautilus? ( dev-python/nautilus-python:* )"

python_install() {
	distutils-r1_python_install
}

python_install_all() {
	if use nautilus; then
		echo "-- install nautilus extension ..."
		insinto /usr/share/nautilus-python/extensions
		doins nautilus/mat2.py
	fi

	echo "-- install documentation ..."
	pushd doc &>/dev/null || die
	doman mat.1
	dosym mat.1 /usr/share/man/man1/mat2.1
	popd &>/dev/null || die

	echo "-- install python parts ..."
	distutils-r1_python_install_all
}

# update icon cache
pkg_preinst() {
	gnome2_icon_savelist
}
pkg_postinst() {
	gnome2_icon_cache_update
}
pkg_postrm() {
	gnome2_icon_cache_update
}
