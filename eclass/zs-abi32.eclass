# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

if [[ -z ${_ZS_ABI32_ECLASS} ]]; then
_ZS_ABI32_ECLASS=1

zs_abi32_use() {
  case "$ARCH" in
    (amd64) echo 'abi_x86_32(-)' ;;
  esac
}

zs_abi32_ready() {
  case "$ARCH" in
    (amd64) return 0 ;;
  esac
  return 1
}

fi
