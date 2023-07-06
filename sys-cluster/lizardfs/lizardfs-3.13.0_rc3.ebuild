# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

MY_P="lizardfs-${PV/_/-}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="LizardFS is an Open Source Distributed File System licenced under GPLv3."
HOMEPAGE="https://lizardfs.org"
SRC_URI="https://github.com/lizardfs/${PN}/archive/${PV/_/-}.tar.gz -> ${P}.tar.gz"

#EGIT_REPO_URI="https://github.com/lizardfs/lizardfs.git"
#EGIT_COMMIT="v${PV/_/-}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="client-lib +fuse"

CMDEPEND="
	app-text/asciidoc
	dev-lang/python:=
	dev-libs/boost:=
	dev-libs/judy
	dev-libs/libfmt:=
	dev-libs/spdlog:=
	sys-libs/pam
	sys-libs/zlib:=
	!sys-cluster/moosefs
	amd64? ( dev-libs/isa-l:= )
	fuse? ( >=sys-fs/fuse-2.6:= )
"
RDEPEND="
	${CMDEPEND}
	acct-user/lizardfs
"
DEPEND+="
	${CMDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
		# the CMake files expect that this is the default
		-DBUILD_SHARED_LIBS=NO
		# let portage decide if ccache should be used
		-DENABLE_CCACHE=NO
		-DENABLE_TESTS=NO
		-DCMAKE_INSTALL_PREFIX=/
		# the required libpolonaise isn't in-tree
		-DENABLE_POLONAISE=NO
		-DENABLE_CLIENT_LIB=$(usex client-lib)
		# the following would want to download stuff
		# and used versions are so old that they aren't in-tree
		-DENABLE_NFS_GANESHA=NO
		# the conditional isn't used in all required places,
		# uraft is always built regardless
		-DENABLE_URAFT=YES
		-DSET_RC_BUILD_NUMBER=$(ver_cut 5)
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	local FILESPFX="${FILESDIR}/3.13.0_rc2-"

	for i in cgiserv uraft; do
		newinitd "${FILESPFX}$i.init" "lizardfs-$i"
		newconfd "${FILESPFX}$i.conf" "lizardfs-$i"
	done

	newinitd "${FILESPFX}lizardfs.init" lizardfs
	newconfd "${FILESPFX}lizardfs.conf" lizardfs

	for i in chunkserver master metalogger; do
		dosym lizardfs "/etc/init.d/lizardfs-$i"
	done

	insinto /etc/sudoers.d
	newins "${FILESPFX}uraft.sudoers" lizardfs-uraft
}
