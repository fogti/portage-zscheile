# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"
IUSE="zsdatab"

COMMON_DEPEND="
	dev-libs/boost
	zsdatab? (
		>=dev-db/zsdatab-0.2.6:=
	)"

DEPEND="$COMMON_DEPEND
	$DEPEND"

RDEPEND="$COMMON_DEPEND
	$RDEPEND"

src_configure() {
	local ZSDATAB_CMN='Zsdatable'
	if use zsdatab && has_version '>=dev-db/zsdatab-0.3.0'; then
		ZSDATAB_CMN='ZSdatab'
		# fix CMake files to use new naming scheme
		sed -i -e "s/find_package(Zsdatable)/find_package(ZLIB REQUIRED)\nfind_package(Zsdatable REQUIRED)/g;s/Zsdatable/ZSdatab/g" CMakeLists.txt || die
		sed -i -e "s/\${ZSdatab_LIBRARIES}/ZSdatab::zsdatable/g" CMakeLists.txt || die
		sed -i -e "s/Zsdatable/ZSdatab/g" zspprconfig.h.in || die
	fi

	local mycmakeargs=(
		$(cmake-utils_use_find_package zsdatab "$ZSDATAB_CMN")
	)

	cmake-utils_src_configure
}
