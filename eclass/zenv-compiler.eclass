# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

if [[ ${___ECLASS_ONCE_ZENV_COMPILER} != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZENV_COMPILER="recur -_+^+_- spank"

IUSE="${IUSE} compiler_gcc compiler_clang single_compiler_gcc single_compiler_clang"

if [[ ${PN} == "zenv-compiler" ]] ; then
	inherit zserik-virtual
	DESCRIPTION="Erik Zscheile: compiler"
	RDEPEND="${RDEPEND}
		compiler_gcc? ( sys-devel/gcc )
		compiler_clang? ( sys-devel/clang )"
else
	DEPEND="${DEPEND}
		virtual/zenv-compiler[compiler_gcc?,compiler_clang?,single_compiler_gcc?,single_compiler_clang?]"
fi

REQUIRED_USE="${REQUIRED_USE}
	|| ( single_compiler_gcc single_compiler_clang )
	single_compiler_gcc? ( compiler_gcc )
	single_compiler_clang? ( compiler_clang )"

fi
