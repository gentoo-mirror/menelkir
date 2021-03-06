# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-supergrafx-libretro"
LIBRETRO_COMMIT_SHA="d0d89b4fc8edae852ad108498fba4ef876e251c6"
inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen Supergrafx. (SuperGrafx TG-16)"
HOMEPAGE="https://github.com/libretro/beetle-supergrafx-libretro"
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
