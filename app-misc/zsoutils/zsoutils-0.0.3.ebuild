# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-cmake

DESCRIPTION="ZS Outils - output utilitys - multi call binary"

KEYWORDS="amd64 x86"

COMMON_DEPEND="$COMMON_DEPEND
dev-libs/boost"

DEPEND="$DEPEND
$COMMON_DEPEND"

RDEPEND="$RDEPEND
$COMMON_DEPEND"
