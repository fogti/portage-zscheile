# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile Dimension Language Compiler"
KEYWORDS="arm amd64 x86"
DEPEND="$DEPEND
sys-devel/bison
sys-devel/flex"
