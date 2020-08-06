# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils autotools cmake-utils flag-o-matic user

MY_P="lizardfs-${PV/_/-}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="LizardFS is an Open Source Distributed File System licenced under GPLv3."
HOMEPAGE="https://lizardfs.org"
SRC_URI="https://github.com/lizardfs/lizardfs/archive/${PV/_/-}.tar.gz -> ${P}.tar.gz"

#EGIT_REPO_URI="https://github.com/lizardfs/lizardfs.git"
#EGIT_COMMIT="v${PV/_/-}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cgi +fuse static-libs uraft"

RDEPEND="
	app-text/asciidoc
	dev-libs/judy
	dev-libs/libfmt:=
	dev-libs/spdlog:=
	!sys-cluster/moosefs
	amd64? ( dev-libs/isa-l )
	cgi? ( dev-lang/python:= )
	fuse? ( >=sys-fs/fuse-2.6:0= )"
DEPEND="${RDEPEND}
	dev-libs/boost"

PATCHES=( "${FILESDIR}"/${PV}-{shared-libs,spdlog-libfmt}.patch )

pkg_setup() {
	enewgroup lizardfs
	enewuser lizardfs -1 -1 -1 lizardfs
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
		-DENABLE_TESTS=NO
		-DCMAKE_INSTALL_PREFIX=/
		-DENABLE_DEBIAN_PATHS=YES
		# the required libpolonaise isn't in-tree
		-DENABLE_POLONAISE=NO
		-DENABLE_URAFT=$(usex uraft)
		-DSET_RC_BUILD_NUMBER=$(ver_cut 5)
		# the following would want to download stuff
		-DENABLE_NFS_GANESHA=NO
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	diropts -m0750 -o lizardfs -g lizardfs
	dodir "/var/lib/lizardfs"
}
