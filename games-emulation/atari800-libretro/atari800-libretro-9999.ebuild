# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-${PN//-libretro}"

inherit libretro-core

DESCRIPTION="Atari800 libretro core"
HOMEPAGE="https://github.com/libretro/libretro-atari800"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

