# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/nxengine-libretro"
LIBRETRO_COMMIT_SHA="48ba50038b9e284e84c1be0629cf99d5eb3e8010"

inherit libretro-core

DESCRIPTION="libretro implementation of NXEngine. (Cave Story)"
HOMEPAGE="https://github.com/libretro/nxengine-libretro"
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

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		elog ""
		elog "To play a game, like Cave Story, put the gamefiles"
		elog "to your rgui_browser_directory and select the executable as game"
		elog ""
		ewarn ""
	fi
}
