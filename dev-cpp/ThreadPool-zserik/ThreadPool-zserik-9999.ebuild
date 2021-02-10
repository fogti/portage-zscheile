# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zs-minimal meson multilib-minimal

if [[ $PV == *9999* ]]; then
	inherit git-r3
	SRC_URI=""
	HOMEPAGE="https://github.com/zserik/ThreadPool"
	EGIT_REPO_URI="${HOMEPAGE}.git"
	LICENSE="ZLIB"
	KEYWORDS="-* ~arm ~amd64 ~x86"
fi

DESCRIPTION="A simple C++17 ThreadPool implementation - zserik's fork"
IUSE+="static-libs"
CMDEPEND="
	virtual/pkgconfig
	!dev-cpp/ThreadPool
"
DEPEND+="
$CMDEPEND"
RDEPEND+="
$CMDEPEND"

multilib_src_configure() {
	local emesonargs=( -Ddefault_library="$(use static-libs && echo both || echo shared)" )
	meson_src_configure
}

multilib_src_compile() {
	meson_src_compile
}

multilib_src_install() {
	meson_src_install
}
