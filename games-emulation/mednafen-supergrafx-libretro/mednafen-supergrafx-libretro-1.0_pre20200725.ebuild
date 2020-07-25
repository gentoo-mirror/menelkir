# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-supergrafx-libretro"
LIBRETRO_COMMIT_SHA="adb70c556077f776a04ba1ad124fe36befa740ab"
inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen Supergrafx. (SuperGrafx TG-16)"
HOMEPAGE="https://github.com/libretro/beetle-supergrafx-libretro"
KEYWORDS="amd64 x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_install() {
	LIBRETRO_CORE_LIB_FILE="${S}/mednafen_supergrafx_libretro.so" \
	libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
