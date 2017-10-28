# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-virtual

DESCRIPTION="Zscheile LaTeX Environment"

KEYWORDS="arm amd64 x86"
IUSE="emacs l10n_de"

RDEPEND="dev-texlive/texlive-latexextra
	virtual/latex-base

	emacs? (
		app-emacs/auctex
	)

	l10n_de? (
		dev-texlive/texlive-langgerman
	)
"
