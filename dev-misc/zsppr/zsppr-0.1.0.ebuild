# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake
DESCRIPTION="Zscheile simple universal Preprocessor"
KEYWORDS="amd64 arm x86"

COMMON_DEPEND="$COMMON_DEPEND
dev-libs/boost"

DEPEND="$COMMON_DEPEND
$DEPEND"

RDEPEND="$COMMON_DEPEND
$RDEPEND"
