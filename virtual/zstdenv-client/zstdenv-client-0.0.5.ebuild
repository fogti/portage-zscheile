# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Zscheile Standard Environment for Clients"

KEYWORDS="arm amd64 x86"
IUSE="+emacs flash games geosci wine +xfce"

RDEPEND="app-admin/sudo
	app-admin/sysklogd
	app-arch/xarchiver
	app-crypt/easy-rsa
	app-editors/gedit
	app-editors/nano
	app-editors/nedit
	app-misc/mc
	app-office/libreoffice
	app-portage/eix
	app-portage/gentoolkit
	app-text/evince
	dev-util/geany
	dev-util/strace
	dev-vcs/git
	mail-client/thunderbird
	media-fonts/font-misc-misc
	media-gfx/gqview
	media-sound/alsa-utils
	media-sound/lmms
	media-sound/rhythmbox
	media-sound/timidity++
	media-video/mplayer
	|| (
		net-analyzer/netcat
		net-analyzer/netcat6
	)
	net-analyzer/nmap
	net-analyzer/traceroute
	net-analyzer/wireshark
	net-dns/bind-tools
	net-fs/nfs-utils
	net-fs/openafs
	net-ftp/gftp[gtk]
	net-misc/iputils[-caps,-filecaps]
	net-misc/ntp
	net-misc/openvpn
	net-misc/zadist
	net-print/cups
	sys-apps/mlocate
	sys-auth/pambase[pam_krb5]
	sys-boot/grub
	sys-fs/dosfstools
	sys-kernel/gentoo-sources
	sys-libs/glibc[nscd]
	sys-libs/gpm
	sys-process/cronie
	sys-process/lsof
	www-client/firefox
	www-client/links
	x11-apps/xedit
	x11-apps/xhost
	x11-apps/xinit
	x11-apps/xload
	x11-base/xorg-server
	x11-misc/slim
	x11-terms/rxvt-unicode
	x11-terms/xterm
	emacs? (
		app-editors/emacs
		app-emacs/auctex
		app-text/aspell
	)
	flash? (
		virtual/zimpl-flash
	)
	games? (
		games-board/aisleriot
	)
	geosci? (
		sci-geosciences/gpsbabel
		sci-geosciences/josm
	)
	wine? (
		app-emulation/wine
	)
	xfce? (
		xfce-base/xfce4-meta
		xfce-extra/xfce4-cpugraph-plugin
	)
	"
