# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/hatari"
LIBRETRO_COMMIT_SHA="561c07ee5143d651ee0c04ce31b91ffebc95e299"

inherit libretro-core

DESCRIPTION="Hatari is an Atari ST/STE/TT/Falcon emulator core for libretro"
HOMEPAGE="https://github.com/libretro/hatari"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2"
SLOT="0"

CFLAGS="" # Doesn't compile without this

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_configure() {
	# Skip the ./configure script.
	true
}
