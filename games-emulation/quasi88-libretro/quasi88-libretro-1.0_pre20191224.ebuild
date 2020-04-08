# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/quasi88-libretro"
LIBRETRO_COMMIT_SHA="bd96fe612dd8c0238b1f4d36e1803514142e322e"

inherit libretro-core

DESCRIPTION="A PC-8800 series emulator to the libretro API"
HOMEPAGE="https://github.com/libretro/quasi88-libretro"
KEYWORDS="amd64 x86"

LICENSE="BSD-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
