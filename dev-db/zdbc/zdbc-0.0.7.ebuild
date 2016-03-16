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
    for file in zdbc; do
        echo "install $file"
        dobin "$file"
    done

    insinto /usr/share/zdbc
    for file in lib.sh zdbc.help; do
        echo "install $file"
        doins "$file"
    done

    exeinto /usr/libexec/zdbc
    for file in entry search; do
        echo "install $file"
        doexe "$file"
    done
}

pkg_preinst() {
    if has_version "<app-misc/zdbc-0.0.6"; then
        ewarn "Zscheile DataBases directory structure changed (M -> key)"
        ewarn "ZDB's created with zdbc-0.0.5 will be incompatible"
    fi
}
