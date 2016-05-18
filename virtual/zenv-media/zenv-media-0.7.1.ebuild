# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: media environment"

KEYWORDS="amd64 x86"
IUSE="alsa ffmpeg flash gstreamer jack kde pulseaudio qt"

RDEPEND="alsa? (
		media-libs/alsa-lib
		media-sound/alsa-utils
	)
	ffmpeg? ( virtual/ffmpeg )
	flash? ( virtual/zimpl-flash[gstreamer?] )
	gstreamer? (
		media-libs/gstreamer
		media-plugins/gst-plugins-meta[alsa?,jack?,pulseaudio?]
		qt? ( media-libs/qt-gstreamer )
		kde? ( media-libs/phonon-gstreamer )
	)
	jack? ( media-sound/jack-audio-connection-kit[alsa?] )
	pulseaudio? ( media-sound/pulseaudio[jack?] )"
