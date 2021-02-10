# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-virtual
DESCRIPTION="Erik Zscheile: media environment"
KEYWORDS="arm amd64 x86"
IUSE="gstreamer jack pulseaudio"

RDEPEND="
	media-sound/alsa-utils
	gstreamer?	( media-plugins/gst-plugins-meta[alsa,jack?,pulseaudio?] )
	jack?		( media-sound/jack-audio-connection-kit[alsa] )

	pulseaudio? (
		!media-sound/apulse
		media-sound/paprefs
		media-sound/pavucontrol
		media-sound/pavumeter
	)
"
