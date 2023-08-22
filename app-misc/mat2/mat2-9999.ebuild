# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools
DISTUTILS_SINGLE_IMPL=1
HOMEPAGE="https://0xacab.org/jvoisin/mat2.git"

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3

	EGIT_REPO_URI="${HOMEPAGE}"
else
	SRC_URI="https://0xacab.org/jvoisin/${PN}/-/archive/${PV}/${P}.zip"

	# media-libs/exiftool is untested on arm
	KEYWORDS="amd64 x86"
fi

inherit distutils-r1 xdg-utils

DESCRIPTION="Metadata anonymisation toolkit"
LICENSE="LGPL-3+"
SLOT="0"
IUSE="nautilus"

CMDEPEND="
${PYTHON_DEPS}
app-text/poppler:*[introspection]
$(python_gen_cond_dep '
dev-python/pycairo[${PYTHON_USEDEP}]
dev-python/pygobject:3[${PYTHON_USEDEP}]
media-libs/mutagen[${PYTHON_USEDEP}]
')
media-libs/exiftool
x11-libs/gdk-pixbuf:2[introspection]"

DEPEND+="${CMDEPEND}
$(python_gen_cond_dep '
dev-python/setuptools[${PYTHON_USEDEP}]
')"

BDEPEND+="
	app-arch/unzip"

RDEPEND+="${CMDEPEND}
nautilus? ( dev-python/nautilus-python:* )"

distutils_enable_tests unittest

python_install() {
	distutils-r1_python_install
}

python_install_all() {
	if use nautilus; then
		insinto /usr/share/nautilus-python/extensions
		doins nautilus/mat2.py
	fi

	doman doc/mat2.1
	rm -rf "${ED}/usr/man"

	distutils-r1_python_install_all
}

pkg_postinst() {
	xdg_icon_cache_update
}
pkg_postrm() {
	xdg_icon_cache_update
}
