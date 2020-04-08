# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/desmume"
inherit libretro-core

DESCRIPTION="libretro implementation of DeSmuME. (Nintendo DS)"
HOMEPAGE="https://github.com/libretro/desmume"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		net-libs/libpcap
		games-emulation/libretro-info"

S="${S}/desmume/src/frontend/libretro"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
