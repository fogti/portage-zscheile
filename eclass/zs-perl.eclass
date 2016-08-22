# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

if [[ "${___ECLASS_ONCE_ZS_PERL}" != "recur -_+^+_- spank" ]] ; then

  ___ECLASS_ONCE_ZS_PERL="recur -_+^+_- spank"

  inherit zserik-minimal perl-functions

  DEPEND="dev-lang/perl"
  RDEPEND="$DEPEND"
  EXPORT_FUNCTIONS src_prepare src_configure src_install

  zs-perl_src_prepare() {
    perl_fix_osx_extra
  }

  zs-perl_src_configure() {
    perl_check_env
  }

  zs-perl_src_install() {
    perl_set_version
    perl_delete_localpod
    perl_remove_temppath
  }

fi
