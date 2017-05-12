# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile Dimensiion Language Compiler"
KEYWORDS="arm amd64 x86"
DEPEND="$DEPEND
sys-devel/bison
sys-devel/flex"
