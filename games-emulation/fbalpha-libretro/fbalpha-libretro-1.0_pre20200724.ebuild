# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/fbalpha"
LIBRETRO_COMMIT_SHA="84eb9d928be2925c20d2577110f44e890d72532d"
inherit libretro-core

DESCRIPTION="Port of Final Burn Alpha to Libretro"
HOMEPAGE="https://github.com/libretro/fbalpha"
KEYWORDS="amd64 x86"

LICENSE="FBA"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
