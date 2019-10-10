# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils desktop

DESCRIPTION="Frontend for emulators (RetroPie Fork)"
HOMEPAGE="https://github.com/RetroPie/EmulationStation"

LICENSE="emulationstation"
SLOT="0"
IUSE="+themes"

SRC_URI="https://github.com/RetroPie/EmulationStation/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"
S="${WORKDIR}/EmulationStation-${PV}"

COMMON_DEPEND="
	dev-cpp/eigen:3
	dev-libs/boost
	media-libs/freeimage[png,jpeg]
	media-libs/freetype
	media-libs/libsdl2
	net-misc/curl
	media-video/vlc
	dev-libs/pugixml
"
RDEPEND="${COMMON_DEPEND}
	themes? ( games-emulation/emulationstation-themes-meta )
"
DEPEND="${COMMON_DEPEND}"
PATCHES=( "${FILESDIR}/${P}-include-fix.patch" )
DOCS=( README.md SYSTEMS.md THEMES.md GAMELISTS.md DEVNOTES.md CREDITS.md )

src_install() {
	cmake-utils_src_install
	doicon "${FILESDIR}/emulationstation.png"
	domenu "${FILESDIR}/emulationstation.desktop"
}

pkg_postinst() {
	ewarn ""
	ewarn "The first start of Emulation Station will fail but also creates"
	ewarn "an example config file at \"\${HOME}/.emulationstation/es_systems.cfg\""
	ewarn ""
	elog ""
	elog "Current valid platform names for scraping can be found at:"
	elog "\"https://github.com/RetroPie/EmulationStation/blob/master/es-app/src/PlatformId.cpp\""
	elog ""
}
