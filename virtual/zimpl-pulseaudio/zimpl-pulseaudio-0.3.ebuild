# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: pulseaudio implementations"
KEYWORDS="amd64 x86"

RDEPEND="!<virtual/zenv-media-0.7.4
	|| (
		media-sound/apulse
		virtual/zenv-media[pulseaudio]
	)
"
