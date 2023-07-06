# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal
DESCRIPTION="Zscheile CMake build script"
KEYWORDS="amd64 arm x86"
RDEPEND="app-arch/tar
dev-util/cmake
sys-apps/coreutils
sys-devel/make"

src_install() {
	dobin zcbuild.sh
}
