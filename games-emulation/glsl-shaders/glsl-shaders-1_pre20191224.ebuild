# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_COMMIT_SHA="faa1226fbee3f37f8c26b73978e5296624744cdb"

inherit libretro

DESCRIPTION="glsl shaders converted by hand from libretro's common-shaders repo"
HOMEPAGE="https://github.com/libretro/glsl-shaders"
KEYWORDS="amd64 x86"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="!<=games-emulation/libretro-common-shaders-1"
DEPEND="${RDEPEND}"

src_install() {
	dodir "${LIBRETRO_DATA_DIR}"/shaders
	# Remove unnecessary git files
	[[ ! ${PV} == "1.0_pre"* ]] && rm -r .git
	cp -R "${S}"/* "${D}${LIBRETRO_DATA_DIR}"/shaders/
}
