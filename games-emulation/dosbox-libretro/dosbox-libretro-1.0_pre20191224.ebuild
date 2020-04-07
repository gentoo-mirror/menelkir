# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/dosbox-libretro"
LIBRETRO_COMMIT_SHA="e4ed503b14ed59d5d745396ef1cc7d52cf912328"
inherit libretro-core

DESCRIPTION="Port of DOSBox (upstream) to the libretro API."
HOMEPAGE="https://github.com/libretro/dosbox-libretro"
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

