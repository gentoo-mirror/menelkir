# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/yabause"
inherit libretro-core 

DESCRIPTION="Yabause/YabaSanshiro/Kronos libretro ports (Sega Saturn emulators)."
HOMEPAGE="https://github.com/libretro/yabause"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/yabause/src/libretro"

