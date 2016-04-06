# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python3_2 python3_3 python3_4 )

inherit distutils-r1 zserik-minimal

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${DEPEND}
dev-python/setuptools"

RDEPEND="${RDEPEND}
sys-apps/man-db"

DOCS="README.rst"

src_install() {
    distutils-r1_src_install

    for file in man/zdbc*.1; do
        echo "install manual page $file"
        doman "$file" || die
    done
}
