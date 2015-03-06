# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit autotools git-r3

DESCRIPTION="iRecovery is a libusb-based commandline utility to talk to iBoot/iBSS in Apple's iPhone/iPod touch via USB"
HOMEPAGE="https://github.com/libimobiledevice/libirecovery"
EGIT_REPO_URI="http://github.com/libimobiledevice/libirecovery.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="virtual/libusb:1
        sys-libs/readline"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}
