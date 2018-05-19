# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
inherit zserik-minimal

EXPORT_FUNCTIONS src_install

zs-zcmake_src_install() {
	insinto /usr/share/cmake/Modules
	for i in *.cmake; do doins "$i"; done
}
