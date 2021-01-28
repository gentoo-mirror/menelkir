# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FreeChaF"
LIBRETRO_CORE_NAME="freechaf"
LIBRETRO_COMMIT_SHA="b5cd0c9d0f34de571c4959ca893a36d19f99cd1c"
LIBRETRO_COMMON_SHA="fedb955ff18465d879b8bb02c7e6fc17188780b1"

inherit libretro-core

DESCRIPTION="libretro emulation core for the Fairchild ChannelF / Video Entertainment System"
HOMEPAGE="https://github.com/libretro/FreeChaF"
KEYWORDS="~amd64 ~x86"
SRC_URI="
	https://github.com/${LIBRETRO_REPO_NAME}/archive/${LIBRETRO_COMMIT_SHA}.tar.gz -> ${P}.tar.gz
	https://github.com/libretro/libretro-common/archive/${LIBRETRO_COMMON_SHA}.tar.gz -> libretro-common-${LIBRETRO_COMMON_SHA}.tar.gz
"
LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info
"

src_unpack(){
    default
    rmdir ${S}/src/deps/libretro-common
    mv "${WORKDIR}/libretro-common-${LIBRETRO_COMMON_SHA}" "${S}/src/deps/libretro-common"
}
