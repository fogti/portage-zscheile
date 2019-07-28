# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

### Zscheile Rollout Package eclass

SRC_URI="http://ezscheile.bplaced.net/zsropm/${PN}.tar.gz -> zsrop-legacy-${P}.tar.gz"
S="${WORKDIR}/${PN}"
KEYWORDS="amd64 arm x86"
SLOT="0"

EXPORT_FUNCTIONS src_prepare src_configure src_install

# dummy functions for hooks
portage_merge() {
	if ! has_version "$1"; then
		die "deps: required package '$*' not found"
	fi
}

zerror() {
	die "$*"
}

prompt() {
	die "'prompt' is forbidden"
}

zlitm() {
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
