# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame2010-libretro"
LIBRETRO_COMMIT_SHA="d3151837758eade73c85c28c20e7d2a8706f30c6"

inherit libretro-core

DESCRIPTION="MAME (0.139) for libretro."
HOMEPAGE="https://github.com/libretro/mame2010-libretro"
KEYWORDS="amd64 x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
