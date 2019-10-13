# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/vemulator-libretro"
inherit libretro-core

DESCRIPTION="A port of the SEGA Visual Memory Unit emulator VeMUlator for libretro."
HOMEPAGE="https://github.com/libretro/vemulator-libretro"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
