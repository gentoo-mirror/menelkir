# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Frontend for emulators (RetroPie Fork)"
HOMEPAGE="https://github.com/RetroPie/EmulationStation"

LICENSE="GPL-3"
SLOT="0"
IUSE="+themes"

inherit git-r3
EGIT_REPO_URI="https://github.com/RetroPie/EmulationStation.git"
SRC_URI=""
KEYWORDS=""

COMMON_DEPEND="
	dev-cpp/eigen:3
	dev-libs/boost
	media-libs/freeimage[png,jpeg]
	media-libs/freetype
	media-libs/libsdl2
	net-misc/curl
	media-video/vlc
	dev-libs/pugixml
	dev-libs/rapidjson
"
RDEPEND="${COMMON_DEPEND}
	themes? ( games-emulation/emulationstation-themes-meta )
"
DEPEND="${COMMON_DEPEND}"

src_prepare() {
	epatch \
		"${FILESDIR}/${P}-include-fix.patch"
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX="${EPREFIX}"/usr
	)
	cmake-utils_src_configure
}

src_install() {
	dobin	emulationstation
	doicon "${FILESDIR}/emulationstation.png"
	domenu "${FILESDIR}/emulationstation.desktop"
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		ewarn ""
		ewarn "The first start of Emulation Station will fail but also creates"
		ewarn "an example config file at \"\${HOME}/.emulationstation/es_systems.cfg\""
		ewarn ""
		elog ""
		elog "Current valid platform names for scraping can be found at:"
		elog "\"https://github.com/RetroPie/EmulationStation/blob/master/es-app/src/PlatformId.cpp\""
		elog ""
	fi
}
