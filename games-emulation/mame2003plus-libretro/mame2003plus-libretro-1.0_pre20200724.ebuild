# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/mame2003-plus-libretro"
LIBRETRO_COMMIT_SHA="7d5983d298dff49a6dfc6f898f9fd55fb6a562f6"
inherit libretro-core

DESCRIPTION="MAME (0.78) with extra features for libretro."
HOMEPAGE="https://github.com/libretro/mame2003-plus-libretro"
KEYWORDS="amd64 x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
