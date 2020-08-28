# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-virtual

DESCRIPTION="Zscheile, Erik's workplace environment"

KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-emulation/wine-vanilla
	app-portage/layman

	dev-python/sqlalchemy
	dev-util/ccache
	dev-util/shellcheck

	media-gfx/simple-scan
	media-video/vlc

	net-misc/mosh
	net-vpn/wireguard-modules
	net-vpn/wireguard-tools

	sci-mathematics/z3
	sys-fs/duperemove
	sys-fs/ntfs3g

	virtual/zenv-latex
	virtual/zstdenv-client
"
