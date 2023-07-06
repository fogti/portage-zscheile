# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

if [[ "${___ECLASS_ONCE_ZS_SHLIB}" != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZS_SHLIB="recur -_+^+_- spank"

inherit zs-minimal

KEYWORDS="amd64 arm x86"
DESCRIPTION="Zscheile Shell Library - "

if [ "${ZS_SHLIB_FULLNAME}" ]; then
	DESCRIPTION+="${ZS_SHLIB_FULLNAME}"
else
	# we can uppercase first letter with tr,
	# but we shouldn't use external programs in global namespace,
	# because they can be missing
	DESCRIPTION+="${PN#zs-shlib-}"
fi

EXPORT_FUNCTIONS src_install

zs-shlib_src_install() {
	insinto /usr/share/zs-shlib
	for i in *.sh; do
		echo "install $i"
		doins "$i"
	done
}
fi
