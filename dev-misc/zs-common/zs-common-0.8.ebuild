# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="ZSerik Common - useful scripts"
KEYWORDS="amd64 x86"
IUSE="color l10n_de"

RDEPEND=">=app-misc/zsoutils-0.0.4
sys-apps/coreutils"

src_compile() {
	emake vars.sh $(usex color color.sh '')
}

src_install() {
	insinto /usr/share/zs-common
	for file in base.sh fileop.sh vars.sh; do
		echo "install $file"
		doins $file
	done

	if use color; then
		echo "install color.sh"
		doins color.sh
	fi

	exeinto /usr/share/zs-common
	for file in gen-sh-script.sh conv-templates-index.sh zsx-wrapper.sh; do
		echo "install $file"
		doexe $file
	done

	insinto /usr/share/zs-common/locales
	echo "install locales/index.sh"
	doins locales/index.sh

	if use l10n_de; then
		echo "install locales/de.sh"
		doins locales/de.sh
	fi
}
