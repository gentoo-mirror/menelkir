# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/theodore"
LIBRETRO_COMMIT_SHA="546c8cd6a09b6cc7bd62207c45a6a201b9362e59"

inherit libretro-core

DESCRIPTION="Libretro core for Thomson TO8/TO8D/TO9/TO9+ emulation."
HOMEPAGE="https://github.com/libretro/theodore"
KEYWORDS="amd64 x86"

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

