
inherit eutils

DESCRIPTION="Dictionary converter"
HOMEPAGE="http://xdxf.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/xdxf/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc"

src_install()
{
	emake DESTDIR="${D}" install || die "install failed"
	dodoc AUTHORS COPYING ChangeLog INSTALL NEWS README TODO
}
