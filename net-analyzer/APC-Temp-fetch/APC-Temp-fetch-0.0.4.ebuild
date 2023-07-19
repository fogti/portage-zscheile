# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..12} )

inherit distutils-r1 optfeature pypi

DESCRIPTION="APC/Schneider UPS current temperature fetchers"
HOMEPAGE="https://pypi.org/project/APC-Temp-fetch/"
SRC_URI="https://files.pythonhosted.org/packages/source/A/APC-Temp-fetch/APC-Temp-fetch-0.0.4.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm x86"

RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"

pkg_postinst() {
	optfeature "SOCKS5 support" "dev-python/requests[socks5]"
}
