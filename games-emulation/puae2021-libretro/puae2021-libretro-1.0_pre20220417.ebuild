# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-uae"
LIBRETRO_CORE_NAME="puae2021"
LIBRETRO_COMMIT_SHA="ba11c2801b3cc31515e69ec6f173692d93b5bdee"

inherit libretro-core

DESCRIPTION="WIP libretro port of UAE (P-UAE and libco), a Commodore Amiga Emulator."
HOMEPAGE="https://github.com/libretro/libretro-uae"
KEYWORDS="~amd64 ~x86 ~arm64"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
