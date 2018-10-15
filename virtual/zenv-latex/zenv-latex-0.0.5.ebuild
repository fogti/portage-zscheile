# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit zserik-virtual

DESCRIPTION="Zscheile LaTeX Environment"

KEYWORDS="arm amd64 x86"
IUSE="emacs l10n_de l10n_en"

RDEPEND="
	dev-tex/biber
	dev-tex/glossaries
	dev-texlive/texlive-latexextra
	dev-texlive/texlive-fontsextra
	dev-texlive/texlive-mathscience
	dev-texlive/texlive-xetex
	virtual/latex-base

	emacs? (
		app-emacs/auctex
	)

	!emacs? (
		app-editors/latexila
	)

	l10n_de? (
		dev-tex/translator
		dev-texlive/texlive-langgerman
	)

	l10n_en? (
		dev-texlive/texlive-langenglish
	)
"
