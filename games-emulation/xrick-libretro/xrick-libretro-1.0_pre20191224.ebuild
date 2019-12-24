# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/xrick-libretro"
LIBRETRO_COMMIT_SHA="a336cad467c9b0988507cee4ae6cf6d9101d8d25"

inherit libretro-core

DESCRIPTION="Xrick is an open source implementation of Rick Dangerous for libretro."
HOMEPAGE="https://github.com/libretro/xrick-libretro"
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

