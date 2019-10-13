# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/freeintv"
inherit libretro-core

DESCRIPTION="A libretro emulation core for the Mattel Intellivision designed to be compatible with joypads from the SNES era forward."
HOMEPAGE="https://github.com/libretro/FreeIntv"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

