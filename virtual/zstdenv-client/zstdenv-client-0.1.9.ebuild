# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5

inherit zserik-virtual

DESCRIPTION="Zscheile Standard Environment for Clients"

KEYWORDS="arm amd64 x86"
IUSE="+emacs experimental +flash games +geosci +kerberos minimal mp3 +vala wine +xdm +xfce +zadist"

# block >=glibc-2.22-r4 because hesiod is broken
#                       bugfix in glibc-2.24
RDEPEND="app-admin/sudo
	app-admin/sysklogd
	app-editors/nano
	app-misc/mc
	app-portage/eix
	app-portage/genlop
	app-portage/gentoolkit
	app-text/dos2unix
	app-text/tree

	dev-util/strace
	dev-util/zsgenheader
	dev-vcs/git

	media-fonts/font-misc-misc
	media-gfx/gqview
	media-plugins/gst-plugins-ffmpeg
	media-plugins/gst-plugins-jpeg
	media-plugins/gst-plugins-meta[mp3?,mpeg]
	media-plugins/gst-plugins-openh264
	media-plugins/gst-plugins-xvid
	media-video/mplayer
	media-video/parole

	net-analyzer/fping
	net-analyzer/nmap[zenmap]
	net-analyzer/tcpdump
	net-analyzer/traceroute
	net-dns/bind-tools
	net-fs/nfs-utils
	net-ftp/gftp[gtk]
	net-misc/ntp

	sys-apps/mlocate
	sys-block/gparted
	sys-boot/grub
	sys-boot/os-prober
	sys-fs/dosfstools
	sys-fs/xfsprogs
	sys-kernel/gentoo-sources
	sys-libs/gpm
	sys-process/lsof

	www-client/links

	x11-apps/xedit
	x11-apps/xhost
	x11-apps/xload
	x11-base/xorg-server
	x11-terms/rxvt-unicode
	x11-terms/xterm

	virtual/cron
	virtual/zenv-media[alsa,flash?]

	|| (
		<sys-libs/glibc-2.22-r4
		>sys-libs/glibc-2.23-r2
	)

	|| (
		net-analyzer/netcat
		net-analyzer/netcat6
	)

	emacs? (
		app-emacs/auctex
		app-text/aspell
	)
	experimental? (
		gnome-extra/gnome-builder[vala?]
	)
	games? (
		games-arcade/alienwave
		games-board/aisleriot
	)

	geosci? (
		sci-geosciences/gpsbabel
		sci-geosciences/josm
	)

	kerberos? (
		sys-auth/pambase[pam_krb5]
	)

	!minimal? (
		app-arch/xarchiver
		app-editors/gedit
		app-office/libreoffice
		app-shells/dash
		app-text/evince

		dev-java/icedtea
		dev-lang/ruby
		dev-util/geany
		dev-vcs/subversion

		mail-client/thunderbird
		media-gfx/gimp
		media-sound/lmms
		media-video/kino

		net-analyzer/wireshark
		net-nds/zsnis

		sci-visualization/gnuplot
		sys-fs/cryptsetup

		www-client/chromium
		www-client/firefox

		x11-themes/tango-icon-theme
	)

	vala? (
		app-admin/eselect-vala
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
	zadist? (
		net-misc/zadist
	)
	"
