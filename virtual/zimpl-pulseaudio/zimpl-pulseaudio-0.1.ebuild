# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: pulseaudio implementations"

KEYWORDS="amd64 x86"

RDEPEND="|| (
		media-sound/apulse
		(
			media-plugins/gst-plugins-meta[pulseaudio]
			media-sound/pulseaudio
		)
	)"
