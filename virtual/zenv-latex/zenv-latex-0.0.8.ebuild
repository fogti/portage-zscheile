# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit zserik-virtual

DESCRIPTION="Zscheile LaTeX Environment"
KEYWORDS="amd64 ~arm ~x86"
IUSE="emacs l10n_de l10n_en"

RDEPEND="
	dev-python/pygments
	dev-tex/biber
	dev-tex/glossaries
	dev-tex/latex-beamer
	dev-tex/latexmk
	dev-texlive/texlive-latexextra
	dev-texlive/texlive-fontsextra
	dev-texlive/texlive-mathscience
	dev-texlive/texlive-xetex
	virtual/latex-base

	emacs? (
		app-emacs/auctex
	)

	l10n_de? (
		dev-texlive/texlive-langgerman
	)

	l10n_en? (
		dev-texlive/texlive-langenglish
	)
"
