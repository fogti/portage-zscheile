# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-virtual
DESCRIPTION="Bedrock Linux build-time meta package"
IUSE="gpg hacking"

# This ebuild is kw:unstable because fuse:3 is unstable.
# hacking: dev-lang/go is needed for mvdan/sh (shfmt)

KEYWORDS="-* ~amd64 ~x86"
RDEPEND="
	app-arch/gzip
	gpg? ( app-crypt/gnupg )
	dev-build/make
	dev-build/meson
	dev-build/ninja
	dev-vcs/git
	sys-apps/fakeroot
	sys-apps/grep
	sys-apps/sed
	dev-build/libtool:*
	virtual/pkgconfig

	hacking? (
		dev-lang/go
		dev-libs/uthash
		dev-util/cppcheck
		dev-util/indent
		dev-util/shellcheck
		sys-apps/attr
		sys-devel/clang:*
		sys-fs/fuse:3
		sys-libs/libcap
	)
"

pkg_postinst() {
	if use hacking; then
		einfo "You might need to install https://github.com/mvdan/sh.git separately."
		einfo "ex. : \$ cd \$(mktemp -d); go mod init tmp; go get mvdan.cc/sh/cmd/shfmt"
	fi
}
