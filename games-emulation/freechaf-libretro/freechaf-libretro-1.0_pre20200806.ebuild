# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FreeChaF"
LIBRETRO_COMMIT_SHA="923a42b30fcda9b0d2ef84916b7b0e0d1760df2b"

inherit libretro-core

DESCRIPTION="libretro emulation core for the Fairchild ChannelF / Video Entertainment System"
HOMEPAGE="https://github.com/libretro/FreeChaF"
KEYWORDS="amd64 x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
