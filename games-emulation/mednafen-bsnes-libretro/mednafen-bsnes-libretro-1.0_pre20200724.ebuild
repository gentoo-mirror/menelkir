# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-bsnes-libretro"
LIBRETRO_COMMIT_SHA="1c269db1d0c7857976efd9b8330ac217385765c8"

inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen SNES. (Super Nintendo Entertainment System)"
HOMEPAGE="https://github.com/libretro/beetle-bsnes-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_install() {
    LIBRETRO_CORE_LIB_FILE="${S}/mednafen_snes_libretro.so" \
	libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
