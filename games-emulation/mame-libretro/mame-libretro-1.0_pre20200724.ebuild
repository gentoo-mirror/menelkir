# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame"
LIBRETRO_COMMIT_SHA="5adb0847900205b70ef2ea07f8b957d5b5c590da"
inherit flag-o-matic check-reqs libretro-core

DESCRIPTION="MAME (current) for libretro."
HOMEPAGE="https://github.com/libretro/mame"
KEYWORDS="amd64 x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

CHECKREQS_MEMORY="8G" # Debug build requires more see bug #47
CHECKREQS_DISK_BUILD="25G" # Debug build requires more see bug #47

pkg_pretend() {
		einfo "Checking for sufficient disk space to build ${PN} with debugging CFLAGS"
		check-reqs_pkg_pretend
}

pkg_setup() {
		check-reqs_pkg_setup
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
