# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-lutro"
LIBRETRO_COMMIT_SHA="38f2b111fef749bee5cba64f031c30bf572421f8"
inherit libretro-core

DESCRIPTION="An experimental lua game framework for libretro following the LOVE API."
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
