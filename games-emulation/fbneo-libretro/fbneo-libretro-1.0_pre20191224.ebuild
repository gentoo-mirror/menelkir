# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/FBNeo"
LIBRETRO_COMMIT_SHA="abe00a3d6cb11d5af0e8b462dbc5597d24fa7282"
inherit libretro-core

DESCRIPTION="Libretro core for Final Burn Alpha fork"
HOMEPAGE="https://github.com/libretro/FBNeo"
KEYWORDS="x86 amd64"

LICENSE="FBA"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
