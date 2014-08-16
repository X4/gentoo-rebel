# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"


DESCRIPTION="Manage Applications of an iPhone or iPod Touch"
HOMEPAGE="http://cgit.sukimashita.com/ideviceinstaller.git/"
EGIT_REPO_URI="http://git.sukimashita.com/ideviceinstaller.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="app-pda/libimobiledevice
         app-pda/libplist
         dev-libs/libzip"
DEPEND="dev-util/pkgconfig
        ${RDEPEND}"

src_prepare() {
	NOCONFIGURE=1 ./autogen.sh
}

src_install() {
	emake DESTDIR="${D}" install || die
}
