# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: waf.eclass
# @MAINTAINER:
# Gavrilov Maksim <ulltor@gmail.com>
#
# @CODE
# Original Author: Gilles Dartiguelongue <eva@gentoo.org>
# Various improvements based on cmake-utils.eclass: Tomáš Chvátal <scarabeus@gentoo.org>
# Proper prefix support: Jonathan Callen <abcd@gentoo.org>
# Adaptation to Vala: Gavrilov Maksim <ulltor@gmail.com>
# @CODE
# @BLURB: common ebuild functions for waf-based packages
# @DESCRIPTION:
# The waf eclass contains functions that make creating ebuild for
# waf-based packages much easier.
# Its main features are support of common portage default settings.

inherit eutils toolchain-funcs multilib vala

DEPEND="dev-lang/python"

case ${EAPI:-0} in
	4|3) EXPORT_FUNCTIONS src_configure src_compile src_install ;;
	*) die "EAPI=${EAPI} is not supported" ;;
esac

# @ECLASS-VARIABLE: WCONF
# @DEFAULT-UNSET
# @DESCRIPTION:
# Extra configure opts passed to `waf configure`
WCONF=${WCONF:-""}

# @FUNCTION: waf_src_configure
# @DESCRIPTION:
# General function for configuring with waf.
waf_src_configure() {
	debug-print-function ${FUNCNAME} "$@"

	# @ECLASS-VARIABLE: WAF_BINARY
	# @DESCRIPTION:
	# Eclass can use different waf executable. Usually it is located in "${S}/waf".
	: ${WAF_BINARY:="${S}/waf"}

	tc-export CC CXX CPP AR RANLIB

	echo "CCFLAGS=\"${CFLAGS}\" LINKFLAGS=\"${LDFLAGS}\" LIBDIR=\"${EPREFIX}/usr/$(get_libdir)\" \"${WAF_BINARY}\" --nocache --prefix=${EPREFIX}/usr ${WCONF} configure"

	CCFLAGS="${CFLAGS}" LINKFLAGS="${LDFLAGS}" \
		LIBDIR="${EPREFIX}/usr/$(get_libdir)" "${WAF_BINARY}" \
		"--nocache" \
		"--prefix=${EPREFIX}/usr" \
		${WCONF} \
		configure || die "configure failed"
}

# @FUNCTION: waf_src_compile
# @DESCRIPTION:
# General function for compiling with waf.
waf_src_compile() {
	debug-print-function ${FUNCNAME} "$@"

	local jobs=$(echo -j1 ${MAKEOPTS} | sed -r "s/.*(-j\s*|--jobs=)([0-9]+).*/--jobs=\2/" )
	echo "\"${WAF_BINARY}\" build ${jobs}"
	"${WAF_BINARY}" ${jobs} || die "build failed"
}

# @FUNCTION: waf_src_install
# @DESCRIPTION:
# Function for installing the package.
waf_src_install() {
	debug-print-function ${FUNCNAME} "$@"

	echo "\"${WAF_BINARY}\" --destdir=\"${D}\" install"
	"${WAF_BINARY}" --destdir="${D}" install  || die "make install failed"
	
	# Manual document installation
	if [[ -n "${DOCS}" ]]; then
		dodoc ${DOCS} || die "dodoc failed"
	fi
}
