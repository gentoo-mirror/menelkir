# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/bnes-libretro"
LIBRETRO_COMMIT_SHA="8e26e89a93bef8eb8992d1921b539dce1792660a"
inherit libretro-core

DESCRIPTION="libretro implementation of bNES/higan. (Nintendo Entertainment System)"
HOMEPAGE="https://github.com/libretro/bnes-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
