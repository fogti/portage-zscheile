# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="ZsGenHeader - generate header from c source file"
KEYWORDS="amd64 arm x86"
RDEPEND="$RDEPEND
sys-apps/grep
sys-apps/sed"
