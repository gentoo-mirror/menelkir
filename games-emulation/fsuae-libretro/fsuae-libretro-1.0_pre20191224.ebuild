# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-fsuae"
LIBRETRO_COMMIT_SHA="d4493d6e9499821956ca39fa42be371c23b22b62"
inherit libretro-core

DESCRIPTION="WIP - fs-uae libretro version (Cross-platform Amiga emulator)"

HOMEPAGE="https://github.com/libretro/libretro-fsuae"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
