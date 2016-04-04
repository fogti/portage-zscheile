# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python3_2 python3_3 python3_4 )

inherit zserik-minimal python-single-r1

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${PYTHON_DEPS}
sys-apps/coreutils"
RDEPEND="${DEPEND}
sys-apps/grep
sys-apps/man-db"

DOCS="README"

pkg_setup() {
    python-single-r1_pkg_setup
}

src_install() {
    default

    echo install zdbc
    dobin zdbc || die

    exeinto /usr/libexec/zdbc
    for file in zslidir.py search; do
        echo "install $file"
        doexe "$file" || die
    done

    for file in zdbc*.1; do
        echo "install manual page $file"
        doman "$file" || die
    done

    python_optimize "${D}"usr/libexec/zdbc
}
