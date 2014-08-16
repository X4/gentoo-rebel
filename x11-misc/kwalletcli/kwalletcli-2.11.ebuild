# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils

DESCRIPTION="command line interface to the KDE Wallet"
HOMEPAGE="https://www.mirbsd.org/kwalletcli.htm"
SRC_URI="https://www.mirbsd.org/MirOS/dist/hosted/kwalletcli/${P}.tar.gz"

LICENSE="MirOS LGPL3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="app-shells/mksh
	dev-qt/qtgui:4"

DEPEND="${RDEPEND}"

S=${WORKDIR}/${PN}

src_compile() {
	KDE_VER=4 LDADD+=" -lkdeui -lkdecore" emake -e || die "emake failed"
}

src_install() {
	dobin kwalletaskpass kwalletcli kwalletcli_getpin pinentry-kwallet || die "dobin failed"
	doman *.1 || die "doman failed"
	doicon *.png *.svg || die "doicon failed"
}

pkg_postinst() {
	einfo
	einfo "To use kwallet for pgp keys add:"
	einfo "pinentry-program /usr/bin/pinentry-kwallet"
	einfo "at the end from user \"~/.gnupg/gpg-agent.conf\" file."
	einfo
}
