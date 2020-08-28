# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

if [[ $PV == *9999* ]]; then
	inherit git-r3
	KEYWORDS=""
	SRC_URI=""
	EGIT_REPO_URI="git://projects.archlinux.org/$PN.git"
else
	KEYWORDS="~amd64"
	SRC_URI="https://git.archlinux.org/$PN.git/snapshot/$P.tar.gz"
fi

DESCRIPTION="Scripts to aid in installing Arch Linux"
LICENSE="GPL-2+"
SLOT="0"
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
