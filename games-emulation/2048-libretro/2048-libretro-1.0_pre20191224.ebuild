# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-2048"
LIBRETRO_COMMIT_SHA="b2b08a8767bae5ecdc2452484768aba84dbc341f"
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
