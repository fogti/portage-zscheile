# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-virtual

DESCRIPTION="Zscheile Standard Environment for Clients"

KEYWORDS="amd64 x86"
IUSE="games +geosci +grub +kerberos +kernel +pulseaudio +xdm +xfce"

RDEPEND="
	app-admin/sudo
	app-admin/sysklogd
	app-admin/zstxtns-utils

	app-editors/gedit
	app-editors/hexedit
	app-editors/nano

	app-emulation/wine
	app-emulation/winetricks

	app-misc/mc
	app-misc/zsropm
	app-misc/zsropm-utils

	app-office/dia
	app-office/libreoffice

	app-portage/eix
	app-portage/gentoolkit

	app-text/ding
	app-text/dos2unix
	app-text/evince
	app-text/fbreader
	app-text/tree

	dev-util/cppcheck
	dev-util/ddd
	dev-util/meld
	dev-util/strace
	dev-util/zcbuild
	dev-util/zsgenheader

	dev-vcs/git
	gnome-base/gvfs[mtp,nfs]

	media-fonts/font-misc-misc
	media-gfx/gimp
	media-gfx/gqview

	media-plugins/gst-plugins-jpeg
	media-plugins/gst-plugins-meta[X,mp3,mpeg,ogg,theora]
	media-plugins/gst-plugins-openh264
	media-plugins/gst-plugins-xvid
	media-plugins/gst-plugins-a52dec
	media-plugins/gst-plugins-faad
	media-plugins/gst-plugins-flac
	media-plugins/gst-plugins-lame
	media-plugins/gst-plugins-libav
	media-plugins/gst-plugins-mad
	media-plugins/gst-plugins-pango
	media-plugins/gst-plugins-xvideo

	media-sound/lmms[pulseaudio?]
	media-video/mplayer[pulseaudio?]

	net-analyzer/fping
	net-analyzer/net-snmp
	net-analyzer/nmap[zenmap]
	net-analyzer/tcpdump
	net-analyzer/traceroute
	net-analyzer/wireshark

	net-dns/bind-tools
	net-fs/nfs-utils
	net-misc/ntp
	net-misc/x11-ssh-askpass

	sys-apps/mlocate
	sys-apps/pciutils
	sys-apps/usbutils

	sys-block/gparted
	sys-cluster/glusterfs

	sys-fs/cryptsetup
	sys-fs/dosfstools
	sys-fs/jmtpfs
	sys-fs/xfsprogs

	sys-kernel/gentoo-sources
	sys-libs/gpm
	sys-power/pm-utils
	sys-process/lsof

	sci-visualization/gnuplot
	www-client/links

	x11-apps/xedit
	x11-apps/xhost
	x11-apps/xload
	x11-apps/xmessage
	x11-apps/xmodmap
	x11-apps/xrandr
	x11-base/xorg-server
	x11-plugins/enigmail
	x11-terms/rxvt-unicode
	x11-terms/xterm
	x11-themes/gnome-icon-theme
	x11-themes/tango-icon-theme

	virtual/cron
	>=virtual/zenv-media-0.7.4
	virtual/zenv-media[alsa,gstreamer,pulseaudio?]

	|| (
		mail-client/thunderbird[pulseaudio?]
		mail-client/thunderbird-bin[pulseaudio?]
	)

	|| (
		net-analyzer/netcat
		net-analyzer/netcat6
	)

	|| (
		www-client/firefox[pulseaudio?]
		www-client/firefox-bin[pulseaudio?]
	)

	games? (
		games-action/armagetronad
		games-arcade/alienwave
		games-board/aisleriot
		games-misc/wyel-sdl
	)

	geosci? (
		sci-geosciences/gpsbabel
		sci-geosciences/josm
	)

	grub? (
		sys-boot/grub
		sys-boot/os-prober
	)

	kerberos? (
		sys-auth/pambase[pam_krb5]
		virtual/krb5
	)

	kernel? (
		net-fs/openafs
	)

	xdm? (
		x11-misc/slim
	)

	xfce? (
		xfce-base/xfce4-meta
		xfce-extra/xfce4-cpugraph-plugin
		xfce-extra/xfce4-notes-plugin
		xfce-extra/xfce4-screenshooter
	)
"
