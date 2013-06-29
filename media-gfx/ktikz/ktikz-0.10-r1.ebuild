# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils qt4-r2

MY_P="${PN}_${PV}"

DESCRIPTION="A QT4-based editor for the TikZ language"
HOMEPAGE="http://www.hackenberger.at/blog/ktikz-editor-for-the-tikz-language"
SRC_URI="http://www.hackenberger.at/${PN}/${MY_P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

#DEPEND="x11-libs/qt-gui:4
DEPEND="dev-qt/qtgui:4
	dev-qt/qthelp:4
	app-text/poppler[qt4]
	virtual/latex-base
	dev-texlive/texlive-latexextra
	dev-tex/pgf"
RDEPEND="${DEPEND}"

DOCS="Changelog TODO"

S="${WORKDIR}/${PN}"

src_prepare() {
	# libs are not equal ldflags, make that sure:
	sed -i -e 's|QMAKE_LFLAGS|LIBS|' macros.pri || die "sed failed"

	# our lrelease is not versioned
	sed -i -e 's|lrelease-qt4|lrelease|' conf.pri || die "sed failed"
}

src_configure() {
	KDECONFIG="CONFIG-=usekde"
	eqmake4 qtikz.pro PREFIX="${D}/usr" "CONFIG+=nostrip" "$KDECONFIG"
}
