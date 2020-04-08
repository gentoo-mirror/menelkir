# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/gpsp"
LIBRETRO_COMMIT_SHA="4d6846b4b72f0f5bbfeb684106cbf5fca8d4743a"
inherit libretro-core

DESCRIPTION="Gameboy gpSP for libretro."
HOMEPAGE="https://github.com/libretro/gpsp"
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
