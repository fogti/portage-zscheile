# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake git-r3

DESCRIPTION="Zscheile tree text database Management Util 2"
LICENSE="GPLv2"
KEYWORDS="~arm ~amd64 ~x86"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/zstreedb2.git"

CMDEPEND="dev-db/rocksdb:="

DEPEND="$DEPEND
$CMDEPEND"

RDEPEND="$RDEPEND
$CMDEPEND"
