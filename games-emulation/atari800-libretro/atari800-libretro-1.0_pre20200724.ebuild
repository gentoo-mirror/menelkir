# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-atari800"
LIBRETRO_COMMIT_SHA="ac0bc2e690fda9e0b7c85600bc6b9d2e27e3b41f"
inherit libretro-core

DESCRIPTION="atari800 libretro core"
HOMEPAGE="https://github.com/libretro/libretro-atari800"
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
