# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/blueMSX-libretro"
LIBRETRO_COMMIT_SHA="ddd89ff1fa534816e48521bd930b721f2d39975a"
inherit libretro-core

DESCRIPTION=" Port of blueMSX to the libretro API"
HOMEPAGE="https://github.com/libretro/blueMSX-libretro"
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
