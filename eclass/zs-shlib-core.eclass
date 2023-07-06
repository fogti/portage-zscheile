# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# include only zs-shlib or zs-shlib-core, not both!

if [[ "${___ECLASS_ONCE_ZS_SHLIB}" != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZS_SHLIB="recur -_+^+_- spank"

inherit zs-minimal

KEYWORDS="amd64 arm x86"
DESCRIPTION="Zscheile Shell Library Core"
DEPEND="
dev-misc/zsppr
sys-devel/make"
RDEPEND="
sys-process/procps"

EXPORT_FUNCTIONS src_configure

zs-shlib-core_src_configure() {
	./configure
}
fi
