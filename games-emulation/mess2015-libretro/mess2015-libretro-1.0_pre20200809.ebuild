# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/mame2015-libretro"
LIBRETRO_COMMIT_SHA="969bf4a4376866f046c885237ee6aee37fe04bf4"

inherit libretro-core

DESCRIPTION="MESS (0.160) for libretro."
HOMEPAGE="https://github.com/libretro/mame2015-libretro"
KEYWORDS="amd64 x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_configure() {
	export TARGET=mess
}

