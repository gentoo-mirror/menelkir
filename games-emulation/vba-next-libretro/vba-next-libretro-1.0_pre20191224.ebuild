# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/vba-next"
LIBRETRO_COMMIT_SHA="b0e81d19945aa73f8c11b30a02d9bdac9f7a6df8"

inherit libretro-core

DESCRIPTION="libretro implementation of VBA Next. (Game Boy Advance)"
HOMEPAGE="https://github.com/libretro/vba-next"
KEYWORDS="amd64 x86"

LICENSE="vba"
SLOT="0"
IUSE="neon +tiled_rendering"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

LIBRETRO_CORE_NAME=vba_next

src_compile() {
	myemakeargs=(
		$(usex arm "platform=armv" "")
		$(usex neon "HAVE_NEON=1" "")
		$(usex tiled_rendering "TILED_RENDERING=1" "")
	)
	libretro-core_src_compile
}
