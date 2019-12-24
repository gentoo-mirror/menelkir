# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/cannonball"
LIBRETRO_COMMIT_SHA="ed510326d1b7acde233b23125309971e7bf5cc25"
inherit libretro-core

DESCRIPTION="An Enhanced OutRun Engine."
HOMEPAGE="https://github.com/libretro/cannonball"
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
