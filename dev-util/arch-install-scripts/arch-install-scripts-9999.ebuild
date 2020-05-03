# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="Scripts to aid in installing Arch Linux"
LICENSE="GPL-2+"
KEYWORDS="-*"
SLOT="0"

SRC_URI=""
HOMEPAGE="https://www.archlinux.org/packages/extra/any/arch-install-scripts/"
EGIT_REPO_URI="git://projects.archlinux.org/$PN.git"

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
