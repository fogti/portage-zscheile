# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="Zscheile XTW interpreter"
KEYWORDS="amd64 arm x86"
LICENSE="MIT"

HOMEPAGE="https://github.com/zserik/zxtw.git"
IUSE="test"

src_compile() {
	cmake-utils_src_compile

	if use test; then
		mkdir -p "${BUILD_DIR}/examples"
		cp -R -t "${BUILD_DIR}/examples" "${S}/examples/"* || die
	fi
}

src_test() {
	_cmake_check_build_dir

	pushd "${BUILD_DIR}/examples" &>/dev/null || die
	mkdir -p cur
	emake ZXTW="${BUILD_DIR}/zxtw" || die 'tests failed'
	popd &>/dev/null || die
}

src_install() {
	cmake-utils_src_install
	dodoc README.md
}
