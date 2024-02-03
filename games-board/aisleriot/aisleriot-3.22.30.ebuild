# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
GNOME2_EAUTORECONF="yes"

inherit gnome.org gnome2-utils meson readme.gentoo-r1 xdg

DESCRIPTION="A collection of solitaire card games for GNOME"
HOMEPAGE="https://wiki.gnome.org/action/show/Apps/Aisleriot"
SRC_URI="https://gitlab.gnome.org/GNOME/${PN}/-/archive/${PV}/${P}.tar.bz2"

LICENSE="GPL-3 LGPL-3 FDL-1.3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug qt5"

# FIXME: quartz support?
# Lookup guile modules grep "use-modules" *.scm
COMMON_DEPEND="
	>=dev-libs/glib-2.32:2
	>=dev-scheme/guile-2.2:12
	>=gnome-base/librsvg-2.32:2
	>=media-libs/libcanberra-0.26[gtk3]
	>=x11-libs/cairo-1.10
	>=x11-libs/gtk+-3.18:3
	qt5? ( >=dev-qt/qtsvg-5:5 )
"
DEPEND="${COMMON_DEPEND}
	app-arch/gzip
	app-text/yelp-tools
	dev-libs/libxml2:2
	dev-util/glib-utils
	dev-build/autoconf-archive
	>=sys-devel/gettext-0.12
	virtual/pkgconfig
"

src_prepare() {
	xdg_src_prepare
}

src_configure() {
	local emesonargs=(
		-Ddocs=false
		-Dtheme_kde=false
		-Dtheme_svg_qtsvg=true
	)
	meson_src_configure
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
}
