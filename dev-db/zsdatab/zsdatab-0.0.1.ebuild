# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="zstab - Zscheile Table Management"
LICENSE="MIT"
KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/grep
sys-apps/sed
virtual/awk"

src_install() {
  dobin zsdatab-entry
  dobin zsdatable
}
