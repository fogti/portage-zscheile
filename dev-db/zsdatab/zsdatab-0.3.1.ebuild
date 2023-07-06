# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake

THREADPOOL_COMMIT="3ab79c9e94b2e1b3f06f854b400805c866998e8d"

DESCRIPTION="Zscheile data text table Management"
LICENSE="LGPL-2.1+"
SLOT="0/0.3.12"
KEYWORDS="arm amd64 x86"
HOMEPAGE="https://github.com/fogti/zsdatab"
SRC_URI="https://github.com/fogti/$PN/archive/v$PV.tar.gz -> $P.tar.gz
https://github.com/fogti/ThreadPool/archive/$THREADPOOL_COMMIT.tar.gz -> fogti-ThreadPool-$THREADPOOL_COMMIT.tar.gz"

DEPEND="$DEPEND
sys-libs/zlib:="

RDEPEND="$RDEPEND
sys-libs/zlib:="

PATCHES=(
	"${FILESDIR}/gcc-9-no-tbb.patch"
)

src_prepare() {
	mv -T "../ThreadPool-$THREADPOOL_COMMIT" "lib/3rdparty/ThreadPool" || die
	cmake_src_prepare
}
