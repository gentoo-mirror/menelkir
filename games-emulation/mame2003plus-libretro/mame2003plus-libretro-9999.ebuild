# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame2003-plus-libretro"
inherit libretro-core

DESCRIPTION="MAME (0.78) for libretro. With more games support and many fixes."
HOMEPAGE="https://github.com/libretro/mame2003-plus-libretro"
KEYWORDS=""

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
