# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/bsnes-libretro"

inherit libretro-core

DESCRIPTION="Libretro fork of bsnes"
HOMEPAGE="https://github.com/libretro/bsnes-libretro"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
# No tests provided
RESTRICT="test"

src_compile(){
	mymakeargs="profile=performance"
		libretro-core_src_compile
}

src_install() {
	LIBRETRO_CORE_LIB_FILE="${S}/bsnes2014_performance_libretro.so" \
			libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
