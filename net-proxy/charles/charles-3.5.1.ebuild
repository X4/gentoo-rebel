
KEYWORDS="~amd64 ~x86"

DESCRIPTION="Charles is an HTTP proxy / HTTP monitor / Reverse Proxy"
HOMEPAGE="http://www.charlesproxy.com/"
SRC_URI="http://charlesrelease.lg1x8.simplecdn.net/release/${PV}/${PN}.tar.gz"
LICENSE="Proprietary"
SLOT="0"
IUSE=""
S="${WORKDIR}/charles"

src_install()
{
	dodir /opt/${P}
	cp -r ${S}/lib ${S}/docs ${D}/opt/${P}/
	exeinto /opt/${P}/bin
	doexe bin/charles.sh
	dosym /opt/${P}/bin/charles.sh /opt/bin/charles
}
