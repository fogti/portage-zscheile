# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake

DESCRIPTION="Zscheile data text table Management"
LICENSE="MIT"
SLOT="0/0.3.11"
KEYWORDS="arm amd64 x86"

CMDEPEND="sys-libs/zlib:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND"

PATCHES=(
	"${FILESDIR}/gcc-9-no-tbb.patch"
)
