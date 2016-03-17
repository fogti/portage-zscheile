# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-minimal

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/grep"

DOCS="README"

src_install() {
    default

    echo install zdbc
    dobin zdbc || die

    insinto /usr/share/zdbc
    echo install lib.sh
    doins lib.sh || die

    exeinto /usr/libexec/zdbc
    for file in entry search; do
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
