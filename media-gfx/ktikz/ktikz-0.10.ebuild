# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit  kde4-base

MY_P=ktikz_${PV}
DESCRIPTION="A QT4-based editor for the TikZ language"
HOMEPAGE="http://www.hackenberger.at/blog/ktikz-editor-for-the-tikz-language"
SRC_URI="http://www.hackenberger.at/${PN}/${MY_P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="debug"

DEPEND="x11-libs/qt-gui:4
	app-text/poppler[qt4]
	virtual/latex-base
	dev-texlive/texlive-latexextra
	dev-tex/pgf"
RDEPEND="${DEPEND}"

DOCS="Changelog TODO"
S=${WORKDIR}/${PN}

