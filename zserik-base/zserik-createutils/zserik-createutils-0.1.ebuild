# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-base

DESCRIPTION="ZSerik CreateUtils - create Directorys and Files"

RDEPEND="zserik-base/zserik-common[color]"

src_install() {
	for file in create-dir create-file mkdir.automake ; do
		dobin ${file}
	done
}
