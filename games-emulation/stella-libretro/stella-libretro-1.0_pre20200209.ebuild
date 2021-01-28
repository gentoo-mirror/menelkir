# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/stella"
LIBRETRO_COMMIT_SHA="c5f03f83944bbd7fd4ea60174722f1ed2ec10986"

inherit libretro-core

DESCRIPTION="libretro implementation of Stella. (Atari 2600)"
HOMEPAGE="https://github.com/libretro/stella"
KEYWORDS="~amd64 ~x86"

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

S="${S}/src/libretro"
