# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit eutils vcs-snapshot systemd

DESCRIPTION="The universal nosql database"
HOMEPAGE="http://www.arangodb.org/"

GITHUB_USER="triAGENS"
GITHUB_TAG="v${PV}"

SRC_URI="https://github.com/${GITHUB_USER}/${PN}/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"
RESTRICT="primaryuri"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND=">=sys-libs/readline-6.2_p1
	>=dev-libs/openssl-1.0.0j"
RDEPEND="${DEPEND}"

pkg_setup() {
	ebegin "Creating arangodb user and group"
	enewgroup arangodb
	enewuser arangodb -1 -1 -1 arangodb
	eend $?
}

src_configure() {
	econf --localstatedir="${EPREFIX}"/var --enable-all-in-one-v8 --enable-all-in-one-libev --enable-all-in-one-icu || die "configure failed"
}

src_install() {
	emake DESTDIR="${D}" install
        default
	newinitd "${FILESDIR}"/arangodb.initd arangodb
        systemd_dounit "${FILESDIR}"/arangodb.service

	fowners arangodb:arangodb /var/log/arangodb
	fowners arangodb:arangodb /var/lib/arangodb
}
