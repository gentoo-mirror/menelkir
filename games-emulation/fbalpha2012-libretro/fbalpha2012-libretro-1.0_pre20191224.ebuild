# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/fbalpha2012"
LIBRETRO_COMMIT_SHA="89245384c7d181e286d6f34995253419f946becb"
inherit libretro-core

DESCRIPTION="Final Burn Alpha 2012. Port of Final Burn Alpha to Libretro (0.2.97.24)"
HOMEPAGE="https://github.com/libretro/fbalpha2012"
KEYWORDS="x86 amd64"

S="${S}/svn-current/trunk"

LICENSE="FBA"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
