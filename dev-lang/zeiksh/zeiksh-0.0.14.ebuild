# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="Zscheile EIK (EICK# dialect) shell and script interpreter"
KEYWORDS="amd64 arm x86"
IUSE="func_save_env"

COMMON_DEPEND="$COMMON_DEPEND
dev-libs/boost"

DEPEND="$DEPEND
$COMMON_DEPEND
"

RDEPEND="$RDEPEND
$COMMON_DEPEND
"

src_configure() {
  local mycmakeargs=(
    $(cmake-utils_use_use func_save_env FUNC_SAVE_ENV)
  )

  cmake-utils_src_configure
}
