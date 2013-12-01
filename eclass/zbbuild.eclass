# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit base flag-o-matic

case ${EAPI:-0} in
	1|2|3) die "EAPI ${EAPI} unsupported (too old)." ;;
	4|5) ;;
	*) die "EAPI ${EAPI} unsupported (unknown)."
esac

IUSE="${IUSE} static_libs compiler_gcc compiler_clang single_compiler_gcc single_compiler_clang"

DEPEND="${DEPEND}
dev-util/boost-build
virtual/zenv-compiler[compiler_gcc?,compiler_clang?,single_compiler_gcc?,single_compiler_clang?]"

EXPORT_FUNCTIONS pkg_setup src_compile src_install
EJAM_OPTIONS="release -d+2"

detect_toolset() {
	for i in gcc clang ; do
		if use single_compiler_${i} ; then
			echo "${i}"
		fi
	done
}

zbbuild_pkg_setup() {
	# backwardscomapt with old boost-build-1.49.0
	if [[ -e $(which bjam-1_49 2>/dev/null) ]] ; then
		my_bjam_bin=bjam-1_49
	else
		my_bjam_bin=bjam
	fi
	local link=""
	if use static_libs ; then
		link="static"
	else
		link="shared"
	fi
	EJAM_OPTIONS="${EJAM_OPTIONS} link=${link}"
	einfo "Using ${my_bjam_bin} for build"
	einfo "Using toolset:" `detect_toolset`
	einfo "Using ejam options: ${EJAM_OPTIONS}"
}

ejam() {
	einfo ${FUNCNAME} "$@"
	einfo "Running ${my_bjam_bin}"
	${my_bjam_bin} --toolset=`detect_toolset` --prefix="${D}/usr/" --libdir="${D}/usr/$(get_libdir)" cflags="${CFLAGS}" cxxflags="${CXXFLAGS}" linkflags="${LDFLAGS}" ${EJAM_OPTIONS} $@
}

zbbuild_src_compile() {
	ejam || die "compile failed"
}

zbbuild_src_install() {
	ejam install || die "install failed"
}
