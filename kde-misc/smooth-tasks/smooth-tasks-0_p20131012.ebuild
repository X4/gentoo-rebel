# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

KDE_MINIMAL="4.8"
KDE_LINGUAS="de"
inherit kde4-base

DESCRIPTION="Alternate taskbar KDE plasmoid, similar to Windows 7
This is evolution of http://kde-look.org/content/show.php/Smooth+Tasks?content=101586 for support of new KDE 4.8 API's."
HOMEPAGE="http://kde-look.org/content/show.php/Smooth+Tasks+2?content=148813"
SRC_URI="http://beonis.fr/${PN}v2013-10-12.tar.gz"
S="${WORKDIR}/smooth-tasks2"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="$(add_kdebase_dep libtaskmanager)
"
RDEPEND="${DEPEND}
        $(add_kdebase_dep plasma-workspace)
"

src_prepare() {
        mv ${WORKDIR}/${PN} ${WORKDIR}/${P}
        kde4-base_src_prepare
}
