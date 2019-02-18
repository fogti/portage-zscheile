# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 cmake-utils

DESCRIPTION="Extracts and records individual MP3 file tracks from shoutcast streams"
HOMEPAGE="http://streamripper.sourceforge.net"
EGIT_REPO_URI="https://github.com/zserik/streamripper.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~arm ~x86 ~amd64-linux ~x86-linux ~x86-macos"
IUSE=""

RDEPEND="media-libs/libmad
	media-libs/faad2
	>=dev-libs/glib-2.16
	media-libs/libvorbis"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS=( CHANGES parse_rules.txt README THANKS )
