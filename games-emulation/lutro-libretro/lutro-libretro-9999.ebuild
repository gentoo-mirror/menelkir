# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit libretro-core

DESCRIPTION="An experimental lua game framework for libretro following the LÖVE API."
HOMEPAGE="https://github.com/libretro/libretro-lutro"
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

