# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit libretro-core

DESCRIPTION="A port of QUASI88, a PC-8800 series emulator by Showzoh Fukunaga, to the libretro API"
HOMEPAGE="https://github.com/libretro/quasi88-libretro"
KEYWORDS=""

LICENSE="BSD-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

