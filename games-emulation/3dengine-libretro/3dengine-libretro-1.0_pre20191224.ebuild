# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-3dengine"
LIBRETRO_COMMIT_SHA="5b2684383d1d5c7e109c660e4c5cc4b27825d98b"
inherit libretro-core

DESCRIPTION="3D Engine for libretro GL with additional features"
HOMEPAGE="https://github.com/libretro/libretro-3dengine"
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
