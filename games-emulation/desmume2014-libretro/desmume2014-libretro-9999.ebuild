# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/${PN//-libretro}"
inherit libretro-core

DESCRIPTION="Port of Desmume to libretro based on Desmume SVN circa 2014."
HOMEPAGE="https://github.com/libretro/desmume2014"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/desmume/src/frontend/libretro"
