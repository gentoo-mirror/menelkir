# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/vitaquake3"
LIBRETRO_COMMIT_SHA="7d9512b9a1e078a060a882b4efaeb45c810ff34e"

inherit libretro-core

DESCRIPTION="libretro implementation of VitaQuake3. (Quake III)"
HOMEPAGE="https://github.com/libretro/vitaquake3"
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
