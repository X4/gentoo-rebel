# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit kde qt3

DESCRIPTION="k3d"
HOMEPAGE="http://k3dsurf.sf.net/"

SRC_URI="mirror://sourceforge/${PN}/${P}-Unstable.zip"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~sparc"
DEPEND="$(qt_min_version 3.3)"

S="${WORKDIR}/${P}-Unstable"

need-kde 3.3

src_compile() {
	qmake || die
	emake || die
}

src_install() {
	dobin bin/k3dsurf
	dodoc README COPYING
	insopts -o root -g root -m 644
	insinto /usr/share/pixmaps/k3dsurf
	doins icon/*
	make_desktop_entry k3dsurf "3-6D Mathematical model visualization" k3dsurf/catenoid_mini_32x32.png
}