# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: media environment"

IUSE="alsa ffmpeg gnome gstreamer jack kde pulseaudio qt zs_apps_flash"

REQUIRED_USE="gnome? ( pulseaudio )"

RDEPEND="alsa? (
		media-libs/alsa-lib
		media-sound/alsa-utils
	)
	ffmpeg? ( virtual/ffmpeg )
	gnome? ( gnome-extra/gnome-media )
	gstreamer? (
		media-libs/gstreamer
		media-plugins/gst-plugins-meta[alsa?,jack?,pulseaudio?]
		qt? ( media-libs/qt-gstreamer )
		kde? ( media-libs/phonon-gstreamer )
	)
	jack? ( media-sound/jack-audio-connection-kit )
	pulseaudio? ( media-sound/pulseaudio )
	zs_apps_flash? ( virtual/zimpl-flash )"
