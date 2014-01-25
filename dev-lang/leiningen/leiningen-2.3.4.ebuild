
# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4


DESCRIPTION="Leiningen is a build utility for clojure projects."
HOMEPAGE="http://github.com/technomancy/leiningen/"
SRC_URI="http://github.com/technomancy/leiningen/raw/stable/bin/lein-pkg
https://leiningen.s3.amazonaws.com/downloads/leiningen-${PV}-standalone.jar"
RESTRICT="mirror"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"

MY_P="${PN}${SLOT}-${PV}"

SITEFILE="70${PN}-gentoo.el"

S=${WORKDIR}/${MY_P}

src_unpack() {
	mkdir ${S}
	for f in ${A}; do
        cp /usr/portage/distfiles/${f} ${S}
	done
}

src_install() {
    insinto /usr/bin
	newbin lein-pkg lein

    mkdir -p ${D}/usr/share/java
	cp leiningen-${PV}-standalone.jar ${D}/usr/share/java/leiningen-${PV}-standalone.jar
}