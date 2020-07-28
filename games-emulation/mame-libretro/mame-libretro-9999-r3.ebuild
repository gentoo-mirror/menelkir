# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/mame"
inherit flag-o-matic check-reqs libretro-core

DESCRIPTION="MAME (current) for libretro."
HOMEPAGE="https://github.com/libretro/mame"
KEYWORDS=""

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

CHECKREQS_MEMORY="9G" # Debug build requires more see bug #47
CHECKREQS_DISK_BUILD="25G" # Debug build requires more see bug #47

pkg_pretend() {
	if is-flagq "-ggdb"; then
		einfo "Checking for sufficient disk space to build ${PN} with debugging CFLAGS"
		check-reqs_pkg_pretend
	fi
}

pkg_setup() {
	if is-flagq "-ggdb"; then
		check-reqs_pkg_setup
	fi
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
