# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: Environment for Amateur Radio"
IUSE="ax25"
KEYWORDS="~amd64"

RDEPEND="media-radio/cqrlog
	media-radio/fldigi
	media-radio/wsjtx

	ax25? (
		media-radio/ax25-apps
		media-radio/ax25-tools
	)"
