# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/bnes-libretro"
inherit libretro-core

DESCRIPTION="Libretro fork of bnes"
HOMEPAGE="https://github.com/libretro/bnes-libretro"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
# No tests provided
RESTRICT="test"

DEPEND=""
RDEPEND="${DEPEND}
                games-emulation/libretro-info"

pkg_preinst() {
        if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
                first_install="1"
        fi
}

