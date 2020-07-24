# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/Craft"
LIBRETRO_COMMIT_SHA="1b0da2b133a528f352c4b6dc24a464c652e39630"
inherit libretro-core

DESCRIPTION="libretro implementation of Craft. (Minecraft clone)"
HOMEPAGE="https://github.com/libretro/Craft"
KEYWORDS="amd64 x86"

LICENSE="Craft"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

PATCHES="${FILESDIR}/clockid.patch"

src_compile() {
	libretro-core_src_compile
}

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/${PN}
	doins "${S}"/LICENSE.md
	libretro-core_src_install
}
