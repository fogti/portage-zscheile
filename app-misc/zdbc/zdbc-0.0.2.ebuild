# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit zserik-minimal

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils"

src_install() {
    echo "install zdbc"
    dobin zdbc

    insinto /usr/share/zdbc
    echo "install zdbc.help"
    doins zdbc.help
    echo "install lib.sh"
    doins lib.sh

    exeinto /usr/libexec/zdbc
    for file in entry search; do
        echo "install $file"
        doexe "$file"
    done
}
