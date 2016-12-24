# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: media environment"

KEYWORDS="amd64 x86"
IUSE="alsa ffmpeg flash gstreamer jack pulseaudio"

RDEPEND="alsa? (
		media-libs/alsa-lib
		media-sound/alsa-utils
	)
	ffmpeg?     ( virtual/ffmpeg )
	flash?      ( virtual/zimpl-flash )
	pulseaudio? ( virtual/zimpl-pulseaudio )
	gstreamer? (
		media-libs/gstreamer
		media-plugins/gst-plugins-meta[alsa?,jack?]
	)
	jack? ( media-sound/jack-audio-connection-kit[alsa?] )"
