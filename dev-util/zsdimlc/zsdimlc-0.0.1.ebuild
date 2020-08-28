# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="Zscheile Dimension Language Compiler"
KEYWORDS="arm amd64 x86"
DEPEND="$DEPEND
sys-devel/bison
sys-devel/flex"
