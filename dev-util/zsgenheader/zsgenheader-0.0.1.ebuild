# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZsGenHeader - generate header from c source file"

KEYWORDS="arm amd64 x86"

RDEPEND="$RDEPEND
app-shells/bash
dev-lang/perl
sys-apps/coreutils
sys-apps/grep
sys-apps/sed
virtual/awk"

src_install() {
    dobin zsgenheader
}
