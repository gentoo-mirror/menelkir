# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="85e41405bc423747a547aca2179b3e02c73c2260"

inherit vcs-snapshot

DESCRIPTION="Cheatcode files, content data files and etc. stuff for RetroArch"
HOMEPAGE="https://github.com/libretro/libretro-database"
SRC_URI="https://github.com/libretro/libretro-database/archive/${LIBRETRO_COMMIT_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

src_compile() {
	:
}
