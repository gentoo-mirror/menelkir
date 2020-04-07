# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/beetle-lynx-libretro"
LIBRETRO_COMMIT_SHA="fe8dc90931de95b90dc1ff76681a95910511f087"

inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen Lynx. (Atari Lynx)"
HOMEPAGE="https://github.com/libretro/beetle-lynx-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

LIBRETRO_CORE_NAME=mednafen_lynx

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

