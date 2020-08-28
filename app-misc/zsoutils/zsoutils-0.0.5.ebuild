# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-cmake

DESCRIPTION="ZS Outils - output utilitys - multi call binary"
KEYWORDS="amd64 ~arm x86"

COMMON_DEPEND="$COMMON_DEPEND
>=dev-libs/zscore-0.0.5:="

DEPEND="$DEPEND
$COMMON_DEPEND"

RDEPEND="$RDEPEND
$COMMON_DEPEND"
