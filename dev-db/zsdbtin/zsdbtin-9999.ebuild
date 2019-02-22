# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-git-cmake

DESCRIPTION="Zscheile Database 7 tin"
LICENSE="MIT"
IUSE="rocksdb"

CMDEPEND="
	dev-db/lmdb:=
	>=dev-libs/libowlevelzs-0.0.3:=
	rocksdb? (
		>=dev-db/rocksdb-5.17.2:=
		>=dev-libs/libzsnidcode-0.0.1:=
	)"

DEPEND="$DEPEND
$CMDEPEND"
RDEPEND="$RDEPEND
$CMDEPEND"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_use rocksdb ROCKSDB)
	)
	cmake-utils_src_configure
}
