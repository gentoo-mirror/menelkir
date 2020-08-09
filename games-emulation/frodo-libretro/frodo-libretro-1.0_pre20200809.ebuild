# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/frodo-libretro"
LIBRETRO_COMMIT_SHA="a93d223753d291bd34f0db4abb931b11eec6c925"

inherit libretro-core

DESCRIPTION="Commdoore 64 emulator for libretro"
HOMEPAGE="https://github.com/libretro/frodo-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

