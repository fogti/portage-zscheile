# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python3_{3,4,5} )

inherit zserik-python-0

DESCRIPTION="ZDBC - Zscheile DataBase Utils"
KEYWORDS="arm amd64 x86"

RDEPEND="${RDEPEND}
sys-apps/man-db"

src_install() {
    zserik-python-0_src_install

    for file in man/zdbc*.1; do
        echo "install manual page $file"
        doman "$file" || die
    done
}
