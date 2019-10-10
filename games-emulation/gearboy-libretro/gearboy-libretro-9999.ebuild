# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit libretro-core

DESCRIPTION="Game Boy / Gameboy Color emulator for iOS, Mac, Raspberry Pi, Windows, Linux and RetroArch."
HOMEPAGE="https://github.com/libretro/Gearboy"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

