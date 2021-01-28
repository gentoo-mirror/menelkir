# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/daphne"
LIBRETRO_COMMIT_SHA="0a7e6f0fda1348144369ce0a889876df60263e8f"

inherit libretro-core

DESCRIPTION="Arcade laserdisc libretro core"
HOMEPAGE="https://github.com/libretro/daphne"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

