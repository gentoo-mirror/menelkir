# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/Dinothawr"
LIBRETRO_COMMIT_SHA="022527e6e2889b98ef644f490c696514389ac00b"
inherit libretro-core

DESCRIPTION="Dinothawr is a block pushing puzzle game on slippery surfaces."
HOMEPAGE="https://github.com/libretro/Dinothawr"
KEYWORDS="amd64 x86"

LICENSE="CC-BY-NC-SA-3.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
