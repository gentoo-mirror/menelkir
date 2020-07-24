# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/cannonball"
LIBRETRO_COMMIT_SHA="5dcef189dc5c408bbd9e4bc08b1f9801b04cd3ca"
inherit libretro-core

DESCRIPTION="An Enhanced OutRun Engine."
HOMEPAGE="https://github.com/libretro/cannonball"
KEYWORDS="amd64 x86"

LICENSE="cannonball"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
