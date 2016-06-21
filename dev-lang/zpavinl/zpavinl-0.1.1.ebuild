# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base autotools-utils

DESCRIPTION="Zscheile ZPAVINL to C compiler"

KEYWORDS="amd64 arm x86"

DEPEND="${DEPEND}
sys-devel/flex
virtual/yacc"
