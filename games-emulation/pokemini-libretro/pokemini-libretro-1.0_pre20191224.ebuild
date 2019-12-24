# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/PokeMini"
LIBRETRO_COMMIT_SHA="444d8d081c28c1233ba2a19c0c7db0ffa70f02ff"

inherit libretro-core

DESCRIPTION="Obscure nintendo handheld emulator."
HOMEPAGE="https://github.com/libretro/PokeMini"
KEYWORDS="amd64 x86"

LICENSE="pokemini"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

