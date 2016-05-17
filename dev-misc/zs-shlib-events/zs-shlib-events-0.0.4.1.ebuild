# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-base

DESCRIPTION="Zscheile Shell Library - Events"

KEYWORDS="amd64 arm x86"
IUSE=""

RDEPEND="!dev-libs/zscore
sys-apps/coreutils
sys-fs/inotify-tools
sys-process/procps"

src_install() {
	insinto /usr/share/zs-shlib
	doins events.sh
}
