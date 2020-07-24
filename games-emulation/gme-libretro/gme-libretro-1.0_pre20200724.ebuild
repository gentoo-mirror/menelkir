# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-gme"
LIBRETRO_COMMIT_SHA="5ba9fb506cb1f18d6e371e4fdb5cd7ee154a00a9"
inherit libretro-core

DESCRIPTION="Port of blargg's Game_Music_Emu library."
HOMEPAGE="https://github.com/libretro/libretro-gme"
KEYWORDS="amd64 x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
