# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=1

inherit zserik-minimal

DESCRIPTION="ZSNIS - Zscheile Secure Network Information Service"

KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
|| (
    net-analyzer/netcat
    net-analyzer/netcat6
)
sys-apps/coreutils
sys-process/procps"

IUSE="server"

src_install() {
    echo install zsniclient
    dobin zsniclient

    if use server; then
        echo install zsniserver
        dobin zsniserver
        dodir /etc/zsnis/data
        dodir /etc/zsnis/dummydata
        dodir /etc/zsnis/keys
    fi

    exeinto /usr/share/zsnis
    for i in clieh.sh zsniserver-main.sh; do
        echo "install $i"
        doexe "$i"
    done

    if use server; then
        echo install servh.sh
        doexe servh.sh
    fi
}
