# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake

DESCRIPTION="ZsGenHeader - generate header from c source file"
KEYWORDS="arm amd64 x86"
RDEPEND="$RDEPEND
sys-apps/grep
sys-apps/sed"
