# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-2048"
inherit libretro-core

DESCRIPTION="Port of 2048 puzzle game to the libretro API. http://gabrielecirulli.github.io/2048/"
HOMEPAGE="https://github.com/libretro/libretro-2048"
KEYWORDS=""

LICENSE="Unlicense"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

