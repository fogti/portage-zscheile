# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zs-shlib

RDEPEND="!dev-libs/zscore
sys-apps/coreutils
sys-fs/inotify-tools
sys-process/procps"
