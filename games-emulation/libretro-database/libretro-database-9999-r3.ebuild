# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit libretro git-r3

DESCRIPTION="Repository containing cheatcode files, content data files, etc."
HOMEPAGE="https://github.com/libretro/libretro-database"
EGIT_REPO_URI="https://github.com/libretro/libretro-database"
KEYWORDS=""

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodir "${LIBRETRO_DATA_DIR}"/cheats/
	cp -R "${S}"/cht/* "${D}${LIBRETRO_DATA_DIR}"/cheats/
	dodir "${LIBRETRO_DATA_DIR}"/data/
	cp -R "${S}"/dat/* "${D}${LIBRETRO_DATA_DIR}"/data/
	cp -R "${S}"/rdb/* "${D}${LIBRETRO_DATA_DIR}"/data/
}
