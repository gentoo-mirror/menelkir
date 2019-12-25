# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/beetle-pcfx-libretro"

inherit libretro-core

DESCRIPTION="Standalone port of Mednafen PCFX to libretro."
HOMEPAGE="https://github.com/libretro/beetle-vb-libretro"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

LIBRETRO_CORE_NAME=mednafen_vb
