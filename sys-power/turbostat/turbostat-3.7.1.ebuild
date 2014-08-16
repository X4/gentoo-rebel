# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils

MY_P="linux-${PV/_/-}"

DESCRIPTION="successor to cpufrequtils distributed along Linux kernel sources"
HOMEPAGE="http://lwn.net/Articles/433002/"
SRC_URI="mirror://kernel/linux/kernel/v3.x/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

RDEPEND="!sys-power/pmtools"

S="${WORKDIR}/${MY_P}/tools/power/x86/turbostat/"

src_unpack() {
	local extract_only extract_list
	extract_only="Makefile tools/power/x86/turbostat/"
	for file in ${extract_only}
	do
		extract_list+=" ${MY_P}/${file}"
	done
	tar -xjpf "${DISTDIR}/${A}" ${extract_list}
}

src_prepare() {
	epatch "${FILESDIR}"/${PN}-install-path.patch
}


src_install() {
	dosbin turbostat
	doman turbostat.8
}
