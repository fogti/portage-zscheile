# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="Arch Linux livecd/liveusb generation scripts"
LICENSE="GPL-2+"
KEYWORDS=""
SLOT="0"

SRC_URI=""
HOMEPAGE="https://wiki.archlinux.org/index.php/archiso"
EGIT_REPO_URI="git://projects.archlinux.org/$PN.git"

RDEPEND="
dev-libs/libisoburn
dev-util/arch-install-scripts
sys-fs/btrfs-progs
sys-fs/dosfstools
sys-fs/squashfs-tools
www-client/lynx
"
