# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake git-r3

DESCRIPTION="Zscheile XTW interpreter"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="MIT"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zxtw.git"
HOMEPAGE="${EGIT_REPO_URI}"
IUSE="${IUSE} test"

CMDEPEND="dev-libs/libzsparsell:=[zsig]"
DEPEND="$DEPEND $CMDEPEND"
RDEPEND="$RDEPEND $CMDEPEND"

src_compile() {
	cmake-utils_src_compile

	if use test; then
		echo 'copy examples'
		mkdir -p "${BUILD_DIR}/examples"
		cp -R -t "${BUILD_DIR}/examples" "${S}/examples/"* || die
	fi
}

src_test() {
	_cmake_check_build_dir

	# emulate test.sh behavoir
	pushd "${BUILD_DIR}/examples" &>/dev/null || die
	mkdir -p cur
	emake ZXTW="${BUILD_DIR}/zxtw" || die 'tests failed'
	popd &>/dev/null || die
}

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md
}
