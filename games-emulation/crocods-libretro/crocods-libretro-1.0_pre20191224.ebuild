# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/libretro-crocods"
LIBRETRO_COMMIT_SHA="fbb619f745c3ff470c9e491a18418d743b93789c"
inherit libretro-core

DESCRIPTION="CrocoDS libretro core"
HOMEPAGE="https://github.com/libretro/libretro-crocods"
KEYWORDS="amd64 x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

