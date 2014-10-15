# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: media environment"

KEYWORDS="x86"
IUSE="alsa ffmpeg gstreamer jack kde pulseaudio qt zs_apps_flash"

RDEPEND="alsa? (
		media-libs/alsa-lib
		media-sound/alsa-utils
	)
	ffmpeg? ( virtual/ffmpeg )
	gstreamer? (
		media-libs/gstreamer
		media-plugins/gst-plugins-meta[alsa?,jack?,pulseaudio?]
		qt? ( media-libs/qt-gstreamer )
		kde? ( media-libs/phonon-gstreamer )
	)
	jack? ( media-sound/jack-audio-connection-kit[alsa?] )
	pulseaudio? ( media-sound/pulseaudio[jack?] )
	zs_apps_flash? ( virtual/zimpl-flash[gstreamer?] )"
