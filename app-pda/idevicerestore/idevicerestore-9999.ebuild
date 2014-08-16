# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Restores firmware and filesystem to iPhone/iPod Touch"
HOMEPAGE="https://github.com/posixninja/idevicerestore"
EGIT_REPO_URI="git://github.com/posixninja/idevicerestore.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="app-pda/libimobiledevice
         app-pda/libirecovery
         app-pda/usbmuxd
         app-pda/libplist
         dev-libs/libzip
         virtual/libusb"
DEPEND="dev-util/pkgconfig
        ${RDEPEND}"

src_prepare() {
	NOCONFIGURE=1 ./autogen.sh
}

src_install() {
	emake DESTDIR="${D}" install || die
}
