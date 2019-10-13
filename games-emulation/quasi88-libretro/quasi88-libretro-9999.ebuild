# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/quasi88-libretro"
inherit libretro-core

DESCRIPTION="A PC-8800 series emulator to the libretro API"
HOMEPAGE="https://github.com/libretro/quasi88-libretro"
KEYWORDS=""

LICENSE="BSD-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"


