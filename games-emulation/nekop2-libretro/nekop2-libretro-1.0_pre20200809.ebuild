# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-meowPC98"
LIBRETRO_COMMIT_SHA="b005f6b7f608e22ab33bccafe581c62a025050bb"

inherit libretro-core

DESCRIPTION="Neko Project 2 (PC98 emulator) port for libretro/RetroArch"
HOMEPAGE="https://github.com/libretro/libretro-meowPC98"
KEYWORDS="amd64 x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/libretro"
