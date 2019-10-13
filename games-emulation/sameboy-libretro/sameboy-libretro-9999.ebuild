# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/Sameboy"
inherit libretro-core

DESCRIPTION="Gameboy and Gameboy Color emulator written in C"
HOMEPAGE="https://github.com/libretro/Sameboy"
KEYWORDS=""

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
