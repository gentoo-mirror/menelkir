# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-${PN//-libretro}"
inherit libretro-core

DESCRIPTION="3D Engine for libretro GL with additional features (camera/location/etc). Should be compatible from libretro 3D/GLES 2.0 and up."
HOMEPAGE="https://github.com/libretro/libretro-3dengine"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
