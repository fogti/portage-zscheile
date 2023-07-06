# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

### Zscheile Rollout Package eclass

SRC_URI="https://ytrizja.de/zsropm/${PN}.tar.gz -> zsrop-legacy-${P}.tar.gz"
HOMEPAGE="https://ytrizja.de/zsropm/"
LICENSE="GPL-2"
S="${WORKDIR}/${PN}"
KEYWORDS="amd64 arm x86"
SLOT="0"

EXPORT_FUNCTIONS src_prepare src_configure src_install

# dummy functions for hooks
portage_merge() {
	local i
	for i; do
		if ! has_version "$i"; then
			die "deps: required package '$i' not found"
		fi
	done
}

zerror() {
	eerror "$*"
}

prompt() {
	die "'prompt' is forbidden"
}

zlitm() {
	local i
	for i in $(seq "$1"); do
		printf ' '
	done
	echo "- $2"
}

# x_hook HOOK_NAME
x_hook() {
	if [ -f "${S}/$1" ]; then
		einfo "run hook: $1"
		(
			export SELPACKAGE="${PN}"
			export PKGDIR="${S}"
			export ZSRO_PASSIVE_MODE=1
			export ZSROPM_API=2
			. "${S}/$1"
		) || die "hook '$1' failed"
	fi
}

zsrop-legacy_src_prepare() {
	default
	x_hook preinst
}

zsrop-legacy_src_configure() {
	x_hook configure
}

zsrop-legacy_src_install() {
	cp -R -T "${S}/root/" "${D}/" || die "install failed"

	x_hook postinst

	dodir /var/lib/zsropm/versions
	echo "${PV}" > "${D}"/var/lib/zsropm/versions/"${PN}"
}
