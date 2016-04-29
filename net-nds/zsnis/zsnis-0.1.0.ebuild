# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=1

inherit zserik-minimal

DESCRIPTION="ZSNIS - Zscheile Secure Network Information Service"

KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
net-analyzer/cryptcat
sys-apps/coreutils
sys-process/procps"

IUSE="server"

src_install() {
    echo install zsniclient
    dobin zsniclient

    if use server; then
        dodir /etc/zsnis
        dodir /run
        dodir /var/log

        echo install zsniserver
        dobin zsniserver

        exeinto /usr/share/zsnis
        echo install zsniserver-main
        doexe zsniserver-main
    fi
}
