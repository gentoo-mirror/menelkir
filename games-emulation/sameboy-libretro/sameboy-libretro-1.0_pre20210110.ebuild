# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/SameBoy"
LIBRETRO_COMMIT_SHA="907cb965baa3ae6e60469ddfbd82798988fa2a9c"
inherit libretro-core

DESCRIPTION="Gameboy and Gameboy Color emulator written in C"
HOMEPAGE="https://github.com/libretro/SameBoy"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND="dev-lang/rgbds"
RDEPEND="${DEPEND}
	games-emulation/libretro-info"

S="${S}/libretro"

src_install() {
	LIBRETRO_CORE_LIB_FILE="${S}/../sameboy_libretro.so"
	libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		elog ""
		elog "You can optionally place the following files in your 'system_directory' folder:"
		elog "dmg_boot.bin"
		elog "cgb_boot.bin"
		elog ""
	fi
}
