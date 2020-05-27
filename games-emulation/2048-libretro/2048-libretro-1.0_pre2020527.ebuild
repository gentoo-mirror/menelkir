# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-2048"
LIBRETRO_COMMIT_SHA="57d43274dfc00cf3f32fe78032a6769c90890399"
inherit libretro-core

DESCRIPTION="Port of 2048 puzzle game to the libretro API"
HOMEPAGE="https://github.com/libretro/libretro-2048"
KEYWORDS="amd64 x86"

LICENSE="Unlicense"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
