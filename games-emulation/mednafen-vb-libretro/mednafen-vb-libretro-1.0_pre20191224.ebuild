# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/beetle-vb-libretro"
LIBRETRO_COMMIT_SHA="ee8e5805c6a7612594dd864f5614bae4d08f2fa9"

inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen VB. (Virtual Boy)"
HOMEPAGE="https://github.com/libretro/beetle-vb-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

LIBRETRO_CORE_NAME=mednafen_vb
