# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/Dinothawr"
inherit libretro-core

DESCRIPTION="MAME (0.139) for libretro."
HOMEPAGE="https://github.com/libretro/Dinothawr"
KEYWORDS=""

LICENSE="CC-BY-NC-SA-2.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
