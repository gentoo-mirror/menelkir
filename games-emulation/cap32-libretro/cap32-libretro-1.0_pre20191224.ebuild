# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-cap32"
LIBRETRO_COMMIT_SHA="8681fbdc5623830078b38d713935caf4682e5295"
inherit libretro-core

DESCRIPTION="Caprice32 libretro core"
HOMEPAGE="https://github.com/libretro/libretro-cap32"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
