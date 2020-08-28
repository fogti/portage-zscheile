# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-git-cmake

DESCRIPTION="Zscheile APC switched PDU control"

CMDEPEND="dev-libs/libowlevelzs:=
	net-analyzer/net-snmp"
DEPEND="${DEPEND}
	${CMDEPEND}"
RDEPEND="net-analyzer/fping
	${CMDEPEND}"
