# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="ideviceactivate is a utility to activate iDevices from the comfort of your GNU/Linux box"
HOMEPAGE="http://github.com/posixninja/ideviceactivate"
EGIT_REPO_URI="git://github.com/posixninja/ideviceactivate.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="app-pda/libimobiledevice
        app-pda/libplist
        app-pda/usbmuxd
        net-libs/gnutls
        dev-libs/libtasn1
        dev-libs/libxml2
        dev-libs/glib:2
        net-misc/curl"
RDEPEND="${DEPEND}"

src_install() {
	dobin "src/ideviceactivate"
	dodoc "LICENSE" "README" "TODO"
}
