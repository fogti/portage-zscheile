# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: media environment"

KEYWORDS="x86"
IUSE="ffmpeg gnome gstreamer jack kde pulseaudio qt"

RDEPEND="ffmpeg? ( virtual/ffmpeg )
	gnome? ( gnome-extra/gnome-media )
	gstreamer? (
		media-libs/gstreamer
		media-plugins/gst-plugins-meta[jack?,pulseaudio?]
		qt? ( media-libs/qt-gstreamer )
		kde? ( media-libs/phonon-gstreamer )
	)
	jack? ( media-sound/jack-audio-connection-kit )
	pulseaudio? ( media-sound/pulseaudio )"
