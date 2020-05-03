# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Scripts to aid in installing Arch Linux"
LICENSE="GPL-2+"
KEYWORDS="x86 amd64"
SLOT="0"

SRC_URI="https://git.archlinux.org/$PN.git/snapshot/$P.tar.gz"
HOMEPAGE="https://www.archlinux.org/packages/extra/any/$PN/"

CMDEPEND="
sys-apps/coreutils
sys-apps/util-linux
virtual/awk
"

DEPEND="
${CMDEPEND}
app-text/asciidoc
"

RDEPEND="
${CMDEPEND}
sys-apps/pacman
"
