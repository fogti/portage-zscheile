# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"
IUSE="zsdatab"

COMMON_DEPEND="
	dev-libs/boost
	zsdatab? (
		>=dev-db/zsdatab-0.2.6
		dev-db/zsdatab:=
	)"

DEPEND="$COMMON_DEPEND
	$DEPEND
	>=sys-devel/gcc-5.4.0:=[cxx]"

RDEPEND="$COMMON_DEPEND
	$RDEPEND"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package zsdatab Zsdatable)
	)

	cmake-utils_src_configure
}
