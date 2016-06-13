# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit autotools git-r3

DESCRIPTION="Restores firmware and filesystem to iPhone/iPod Touch"
HOMEPAGE="https://github.com/libimobiledevice/idevicerestore"
EGIT_REPO_URI="https://github.com/libimobiledevice/idevicerestore.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="app-pda/libimobiledevice
         app-pda/libirecovery
         app-pda/usbmuxd
         >=app-pda/libplist-1.12
         dev-libs/libzip
         virtual/libusb"
DEPEND="dev-util/pkgconfig
        ${RDEPEND}"

src_prepare() {
	eautoreconf
}
