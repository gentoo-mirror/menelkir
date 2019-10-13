# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/NP2kai"
inherit libretro-core

DESCRIPTION="NP2kai is PC-9801 series emulator for libretro."
HOMEPAGE="https://github.com/libretro/NP2kai"
KEYWORDS=""

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

