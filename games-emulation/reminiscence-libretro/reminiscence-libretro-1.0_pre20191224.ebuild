# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/REminiscence"
LIBRETRO_COMMIT_SHA="506e243b48bacfaf5d5cff568a450cd316561718"

inherit libretro-core

DESCRIPTION="Flashback engine implementation for libretro"
HOMEPAGE="https://github.com/libretro/REminiscence"
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
