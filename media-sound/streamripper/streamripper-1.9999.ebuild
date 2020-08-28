# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="Extracts and records individual MP3 file tracks from shoutcast streams"
HOMEPAGE="http://streamripper.sourceforge.net"
EGIT_REPO_URI="https://github.com/zserik/streamripper.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~arm ~x86 ~x86-macos"
IUSE=""

RDEPEND="media-libs/libmad
	media-libs/faad2
	>=dev-libs/glib-2.16
	media-libs/libvorbis"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS=( CHANGES parse_rules.txt README THANKS )
