# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zserik-virtual
DESCRIPTION="virtual for dev-cpp/ThreadPool... providers"
KEYWORDS="arm amd64 x86"
RDEPEND="|| (
	dev-cpp/ThreadPool-zserik
)"
