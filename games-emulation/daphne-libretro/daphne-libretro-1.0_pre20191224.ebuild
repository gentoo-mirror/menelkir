# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/daphne"
LIBRETRO_COMMIT_SHA="7e5cac88d0509c6f4722100c5b8a9b5ee91f404a"
inherit libretro-core

DESCRIPTION="Daphne libretro core"
HOMEPAGE="https://github.com/libretro/daphne"
KEYWORDS="x86 amd64"

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

