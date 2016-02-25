# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Zscheile Standard Environment for Clients"

KEYWORDS="arm amd64 x86"
IUSE="+emacs experimental +flash games +geosci +kerberos mp3 +vala wine +xdm +xfce"

RDEPEND="app-admin/sudo
	app-admin/sysklogd
	app-arch/xarchiver
	app-crypt/easy-rsa
	app-editors/gedit
	app-editors/nano
	app-misc/mc
	app-office/libreoffice
	app-portage/eix
	app-portage/gentoolkit
	app-text/dos2unix
	app-text/evince
	app-text/poppler[cairo]
	app-text/tree

	dev-libs/libxml2[python]
	dev-perl/Module-Build
	dev-util/geany
	dev-util/strace
	dev-vcs/git
	dev-vcs/subversion

	mail-client/thunderbird

	media-fonts/font-misc-misc
	media-gfx/gqview
	media-libs/harfbuzz[icu]
	media-libs/libpng[apng]
	media-plugins/gst-plugins-meta[mp3?]
	media-sound/alsa-utils
	media-sound/lmms
	media-sound/rhythmbox[-libsecret]
	media-sound/timidity++
	media-video/mplayer

	net-analyzer/nmap[zenmap]
	net-analyzer/traceroute
	net-analyzer/wireshark
	net-dns/bind-tools
	net-fs/nfs-utils
	net-ftp/gftp[gtk]
	net-misc/ntp
	net-misc/openvpn
	net-misc/zadist
	net-print/cups

	sys-apps/mlocate
	sys-boot/grub
	sys-boot/os-prober
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
	x11-terms/rxvt-unicode
	x11-terms/xterm

	virtual/zenv-media[flash?]

	|| (
		net-analyzer/netcat
		net-analyzer/netcat6
	)
	emacs? (
		app-editors/emacs
		app-emacs/auctex
		app-text/aspell
	)
	experimental? (
		gnome-extra/gnome-builder[vala?]
	)
	games? (
		games-board/aisleriot
	)
	geosci? (
		sci-geosciences/gpsbabel
		sci-geosciences/josm
	)
	kerberos? (
		sys-auth/pambase[pam_krb5]
	)
	vala? (
		app-admin/eselect-vala
		dev-lang/vala
	)
	wine? (
		app-emulation/wine
	)
	xdm? (
		x11-misc/slim
	)
	xfce? (
		xfce-base/xfce4-meta
		xfce-extra/xfce4-cpugraph-plugin
		xfce-extra/xfce4-notes-plugin
	)
	"
