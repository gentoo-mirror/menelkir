# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/tyrquake"
LIBRETRO_COMMIT_SHA="bf8adcbd2bd9295ff9fb62740cf9960c5ab0ed1f"

inherit libretro-core

DESCRIPTION="libretro implementation of TyrQuake. (Quake)"
HOMEPAGE="https://github.com/libretro/tyrquake"
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
