# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal cmake
DESCRIPTION="ZsGenHeader - generate header from c source file"
KEYWORDS="amd64 arm x86"
RDEPEND="$RDEPEND
sys-apps/grep
sys-apps/sed"
