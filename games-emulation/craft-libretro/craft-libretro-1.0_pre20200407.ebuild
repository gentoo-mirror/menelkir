# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/Craft"
LIBRETRO_COMMIT_SHA="d1b832825b9cc500328efdc0f0a78517f1c5b479"
inherit libretro-core

DESCRIPTION="libretro implementation of Craft. (Minecraft clone)"
HOMEPAGE="https://github.com/libretro/Craft"
KEYWORDS="amd64 x86"

LICENSE="Craft"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile() {
	libretro-core_src_compile
}

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/${PN}
	doins "${S}"/LICENSE.md
	libretro-core_src_install
}
