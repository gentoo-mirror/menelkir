# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/easyrpg-libretro"
LIBRETRO_COMMIT_SHA="6ad57329edc3f1f9c8b4a244c59874e27cf174a6"
inherit libretro-core

DESCRIPTION="Official libretro port of EasyRPG Player - RPG Maker 2000/2003 and EasyRPG games interpreter https://easyrpg.org/"
HOMEPAGE="https://github.com/libretro/easyrpg-libretro"
KEYWORDS="amd64 x86"

LICENSE="Unlicense"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		dev-libs/liblcf
		games-emulation/libretro-info"

