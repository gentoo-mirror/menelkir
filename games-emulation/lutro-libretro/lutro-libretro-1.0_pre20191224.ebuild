# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-lutro"
LIBRETRO_COMMIT_SHA="6e7c0de593f2dce3aa2035df9a4c4136e56595e7"
inherit libretro-core

DESCRIPTION="An experimental lua game framework for libretro following the LÖVE API."
HOMEPAGE="https://github.com/libretro/libretro-lutro"
KEYWORDS="amd64 x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

