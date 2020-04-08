# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-atari800"
LIBRETRO_COMMIT_SHA="efc0bc71e3cb8a4f957d07fe808cc002ed9c13b9"
inherit libretro-core

DESCRIPTION="atari800 libretro core"
HOMEPAGE="https://github.com/libretro/libretro-atari800"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
