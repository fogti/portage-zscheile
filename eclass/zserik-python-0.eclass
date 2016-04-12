# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

if [[ ${___ECLASS_ONCE_ZSERIK_PYTHON} != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZSERIK_PYTHON="recur -_+^+_- spank"

inherit distutils-r1 zserik-minimal

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND="${DEPEND}
dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS="${DOCS} README.rst"

EXPORT_FUNCTIONS src_install

zserik-python-0_src_install() {
    distutils-r1_src_install
}

fi
