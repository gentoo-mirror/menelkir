# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/desmume"
LIBRETRO_COMMIT_SHA="e8cf461f83eebb195f09e70090f57b07d1bcdd9f"
inherit libretro-core

DESCRIPTION="libretro implementation of DeSmuME. (Nintendo DS)"
HOMEPAGE="https://github.com/libretro/desmume"
KEYWORDS="amd64 x86"

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
