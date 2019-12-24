# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame2015-libretro"
LIBRETRO_COMMIT_SHA="37333ed6fda4c798a1d6b055fe4708f9f0dcf5a7"

inherit libretro-core

DESCRIPTION="MAME (0.160) for libretro."
HOMEPAGE="https://github.com/libretro/mame2015-libretro"
KEYWORDS="x86 amd64"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
