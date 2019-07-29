# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
SLOT=0
IUSE=""
DESCRIPTION="fix_libtool_files.sh"
KEYWORDS="amd64 arm x86"
RDEPEND="sys-devel/gcc:*"

src_unpack() {
	mkdir -p "${S}"
}

src_install() {
	into /usr
	cd "${FILESDIR}" || die "unable to change directory"

	if [ -f fix_libtool_files_gcc.sh ]; then
		einfo "using fix_libtool_files_gcc.sh"
		newsbin fix_libtool_files_gcc.sh fix_libtool_files.sh
	else
		einfo "using fallback fix_libtool_files.sh"
		dosbin fix_libtool_files.sh
	fi

	dodir /var/lib/zsropm/versions
	echo "${PV}" > "${D}"/var/lib/zsropm/versions/"${PN}"
}
