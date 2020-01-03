# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit zserik-cmake

DESCRIPTION="Zscheile EIK handles typemodule ${PN}"
SRC_URI="mirror://ytrizja/zeik-handles-${P}.tar.gz"
S="${WORKDIR}/zeik-handles-${P}"

DEPEND+="
	dev-libs/zeik-handles:="

RDEPEND+="
	dev-libs/zeik-handles:="
