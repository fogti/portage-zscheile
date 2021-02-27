# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

if [[ ${___ECLASS_ONCE_ZS_GIT} != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZS_GIT="recur -_+^+_- spank"

inherit zs-minimal git-r3

SRC_URI=""
HOMEPAGE="https://github.com/zseri/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"
LICENSE="MIT"
KEYWORDS="-* ~arm ~amd64 ~x86"
fi
