# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils fdo-mime multilib versionator

DESCRIPTION="Watch torrent movies instantly"
HOMEPAGE="https://popcorntime.sh/"
MY_PV=$(replace_version_separator 3 '-')

SRC_URI="x86?   ( http://get.popcorntime.sh/build/Popcorn-Time-${MY_PV}-linux32.zip )
		 amd64? ( http://get.popcorntime.sh/build/Popcorn-Time-${MY_PV}-linux64.zip )"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="splitdebug strip"

DEPEND=""
RDEPEND="dev-libs/nss
	gnome-base/gconf
	dev-games/libnw
	media-fonts/corefonts
	media-libs/alsa-lib
	x11-libs/gtk+:2
	net-libs/nodejs"

S="${WORKDIR}"

src_install() {
	exeinto /opt/${PN}
	doexe Popcorn-Time
	
	insinto /opt/${PN}
	doins -r src node_modules icudtl.dat locales LICENSE.txt nw_100_percent.pak nw_200_percent.pak package.json

	dosym /$(get_libdir)/libudev.so.1 /opt/${PN}/libudev.so.0
	dosym /opt/${PN}/Popcorn-Time /usr/bin/${PN}

	insinto /usr/share/applications
	doins "${FILESDIR}"/${PN}.desktop

	insinto /usr/share/pixmaps
	doins "${FILESDIR}"/${PN}.png
}

pkg_postinst() {
	fdo-mime_desktop_database_update
}

pkg_postrm() {
	fdo-mime_desktop_database_update
}
