# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/fuse-libretro"
LIBRETRO_COMMIT_SHA="37c8a3c8c0306f7f2d6a356c41bae96fc656d983"
inherit libretro-core

DESCRIPTION=" A port of the Fuse Unix Spectrum Emulator to libretro"
HOMEPAGE="https://github.com/libretro/fuse-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

