# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-virtual
DESCRIPTION="Zscheile Standard Environment for Clients"

KEYWORDS="amd64 x86"
IUSE="games +grub +kerberos +pulseaudio +xdm +xfce"

RDEPEND="
	app-admin/sudo
	app-admin/sysklogd

	app-editors/gedit
	app-editors/hexedit
	app-editors/nano

	app-misc/jq
	app-misc/mc

	app-office/libreoffice

	app-portage/eix
	app-portage/gentoolkit
	app-portage/pfl

	app-text/ding
	app-text/dos2unix
	app-text/evince
	app-text/odt2txt
	app-text/tree

	dev-python/pip

	dev-util/cppcheck
	dev-util/meld
	dev-util/strace
	dev-util/zcbuild

	dev-vcs/git
	gnome-base/gvfs[mtp,nfs]

	media-fonts/font-misc-misc
	media-gfx/geeqie[exif]
	media-gfx/gqview
	media-gfx/gimp
	media-gfx/graphviz

	media-plugins/gst-plugins-meta[X,mp3,mpeg,ogg,theora]
	media-plugins/gst-plugins-a52dec
	media-plugins/gst-plugins-faad
	media-plugins/gst-plugins-flac
	media-plugins/gst-plugins-lame
	media-plugins/gst-plugins-libav
	media-plugins/gst-plugins-openh264

	media-sound/audacity[alsa]
	media-sound/mixxx
	media-sound/lmms[pulseaudio?]
	media-video/mplayer[pulseaudio?]

	net-analyzer/fping
	net-analyzer/net-snmp
	net-analyzer/nmap
	net-analyzer/tcpdump
	net-analyzer/traceroute
	net-analyzer/wireshark

	net-dns/bind-tools
	net-fs/nfs-utils
	net-misc/x11-ssh-askpass

	sys-apps/mlocate
	sys-apps/pciutils
	sys-apps/usbutils
	sys-block/gparted
	sys-devel/gdb

	sys-fs/cryptsetup
	sys-fs/dosfstools
	sys-fs/jmtpfs
	sys-fs/xfsprogs

	sys-kernel/gentoo-sources
	sys-libs/gpm
	sys-process/lsof

	sci-visualization/gnuplot
	www-client/links

	x11-apps/xhost
	x11-apps/xmessage
	x11-apps/xmodmap
	x11-apps/xrandr
	x11-base/xorg-server
	x11-terms/rxvt-unicode
	x11-terms/xterm
	x11-themes/gnome-themes-standard
	x11-themes/tango-icon-theme

	virtual/cron
	>=virtual/zenv-media-0.7.4[alsa,gstreamer,pulseaudio?]

	|| (
		mail-client/thunderbird[pulseaudio?]
		mail-client/thunderbird-bin[pulseaudio?]
	)

	net-analyzer/netcat

	|| (
		net-misc/chrony
		net-misc/ntp
	)

	|| (
		www-client/firefox[pulseaudio?]
		www-client/firefox-bin[pulseaudio?]
	)

	games? (
		games-action/armagetronad
		games-action/chromium-bsu
		games-arcade/alienwave
		games-board/aisleriot
		games-misc/wyel-sdl
	)

	grub? (
		sys-boot/grub
		sys-boot/os-prober
	)

	kerberos? (
		sys-auth/pambase[pam_krb5]
		virtual/krb5
	)

	pulseaudio? (
		media-sound/paprefs
		media-sound/pulsemixer
		media-sound/pavumeter
	)

	xdm? (
		x11-misc/slim
	)

	xfce? (
		xfce-base/xfce4-meta
		xfce-extra/xfce4-cpugraph-plugin
		xfce-extra/xfce4-screenshooter
		xfce-extra/xfce4-whiskermenu-plugin
	)
"
