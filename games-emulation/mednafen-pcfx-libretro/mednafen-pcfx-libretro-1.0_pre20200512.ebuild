# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-pcfx-libretro"
LIBRETRO_COMMIT_SHA="7e9a586d75468098cba25f604f545a4162c2f376"

inherit libretro-core

DESCRIPTION="Standalone port of Mednafen PCFX to libretro."
HOMEPAGE="https://github.com/libretro/beetle-pcfx-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_install() {
    LIBRETRO_CORE_LIB_FILE="${S}/mednafen_pcfx_libretro.so" \
	libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}