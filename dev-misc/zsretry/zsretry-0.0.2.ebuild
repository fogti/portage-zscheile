# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="zsretry - Zscheile Retry (wait for successfulness) utils"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-process/procps"

src_install() {
	dobin zsretry
	dobin zsretryd

	exeinto /usr/libexec/zsretry
	doexe in
	doexe sw

	insinto /usr/share/zsretry
	doins lib.sh
}
