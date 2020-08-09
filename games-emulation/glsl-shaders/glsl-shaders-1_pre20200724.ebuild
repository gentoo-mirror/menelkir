# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="6c01a86dac2f40d9aa0f19b17ccd4e6393c45fd0"

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

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}