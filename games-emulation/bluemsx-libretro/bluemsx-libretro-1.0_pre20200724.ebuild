# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/blueMSX-libretro"
LIBRETRO_COMMIT_SHA="1d441d908e73cf0fa7f52c42686f6c9e8cd254ed"
inherit libretro-core

DESCRIPTION=" Port of blueMSX to the libretro API"
HOMEPAGE="https://github.com/libretro/blueMSX-libretro"
KEYWORDS="amd64 x86"

LICENSE="bluemsx"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
