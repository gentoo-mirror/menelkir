# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-chailove"
LIBRETRO_COMMIT_SHA="8db1eec22c0296f52f0009f345e02afc637dc3ca"

inherit libretro-core

DESCRIPTION="2D Game Framework with ChaiScript"
HOMEPAGE="https://github.com/libretro/libretro-chailove"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile (){
		emake -f Makefile.libretro
}
