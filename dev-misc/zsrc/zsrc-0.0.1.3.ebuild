# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="zsrc - Zscheile Resource Control framework"
KEYWORDS="arm amd64 x86"
RDEPEND="sys-apps/coreutils
sys-process/procps"

src_install() {
	for file in run daemon-ard; do
		echo "install zsrc-$file"
		dobin "zsrc-$file"
	done

	insinto /usr/share/zsrc
	for file in daemonfuncs.sh functions.sh; do
		echo "install $file"
		doins "$file"
	done
}
