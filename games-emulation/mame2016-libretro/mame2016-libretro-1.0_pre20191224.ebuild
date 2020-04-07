# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame2016-libretro"
LIBRETRO_COMMIT_SHA="ea4c1ffa75eb3fb0096158b71706b8b84d86d12c"

inherit libretro-core

DESCRIPTION="MAME (0.174) for libretro."
HOMEPAGE="https://github.com/libretro/mame2016-libretro"
KEYWORDS="amd64 x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
