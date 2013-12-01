# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: compiler"

IUSE="compiler_gcc compiler_clang single_compiler_gcc single_compiler_clang"

REQUIRED_USE="|| ( single_compiler_gcc single_compiler_clang )
	single_compiler_gcc? ( compiler_gcc )
	single_compiler_clang? ( compiler_clang )"
RDEPEND="compiler_gcc? ( sys-devel/gcc )
	compiler_clang? ( sys-devel/clang )"
