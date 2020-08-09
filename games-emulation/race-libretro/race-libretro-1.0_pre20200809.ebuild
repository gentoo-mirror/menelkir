# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/RACE"
LIBRETRO_COMMIT_SHA="6516a1489e6aaabec6dbbe8cbb615715103f7f52"

inherit libretro-core

DESCRIPTION="Modified ngpc emulator to run on psp, ported to libretro"
HOMEPAGE="https://github.com/libretro/RACE"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

