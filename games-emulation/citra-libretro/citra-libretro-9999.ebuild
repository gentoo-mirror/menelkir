# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/citra"

inherit cmake-utils libretro-core toolchain-funcs git-r3

DESCRIPTION="Nintendo 3DS for libretro"
HOMEPAGE="https://github.com/libretro/citra"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
"
DEPEND="${RDEPEND}
		games-emulation/libretro-info
"

src_configure() {
	local mycmakeargs=(
	-DENABLE_LIBRETRO=1
	-DLIBRETRO_STATIC=1
	-DENABLE_SDL2=0
	-DENABLE_QT=0
	-DCMAKE_BUILD_TYPE="Release"
	-DENABLE_WEB_SERVICE=0
	--target citra_libretro
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	LIBRETRO_CORE_LIB_FILE="${BUILD_DIR}/src/citra_libretro/${LIBRETRO_CORE_NAME}_libretro.so" \
			libretro-core_src_install
}
