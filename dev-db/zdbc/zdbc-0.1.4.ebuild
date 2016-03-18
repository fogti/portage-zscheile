# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-minimal

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

RDEPEND="sys-apps/coreutils
sys-apps/grep
sys-apps/man-db"

DOCS="README"

src_install() {
    default

    echo install zdbc
    dobin zdbc || die

    exeinto /usr/libexec/zdbc
    for file in lib.sh search; do
        echo "install $file"
        doexe "$file" || die
    done

    for file in zdbc*.1; do
        echo "install manual page $file"
        doman "$file" || die
    done
}

pkg_preinst() {
    if has_version "<dev-db/zdbc-0.1.2"; then
        ewarn "zdbc commandline interface changed"
    fi
}
