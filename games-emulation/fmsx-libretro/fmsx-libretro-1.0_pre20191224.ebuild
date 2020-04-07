# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/fmsx-libretro"
LIBRETRO_COMMIT_SHA="c76e1dc09b567ce620c09fc5adde1fc7033d30b6"
inherit libretro-core

DESCRIPTION="Port of fMSX to the libretro API."
HOMEPAGE="https://github.com/libretro/fmsx-libretro"
KEYWORDS="amd64 x86"

LICENSE="fMSX"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

