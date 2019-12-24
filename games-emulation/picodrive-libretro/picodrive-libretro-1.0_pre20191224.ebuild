# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

LIBRETRO_REPO_NAME="libretro/picodrive"
LIBRETRO_COMMIT_SHA="48e1bf20adbafd6238e78d6cf56c99db5d3b889d"

inherit libretro-core

DESCRIPTION="libretro implementation of PicoDrive. \
(Sega GameGear/Sega CD/32X)"
HOMEPAGE="https://github.com/libretro/picodrive"
KEYWORDS="amd64 x86"

LICENSE="PD"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_configure() {
	#No need for configure, libretro does its own thing
	:
}

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/picodrive_libretro
	doins "${S}"/COPYING
	libretro-core_src_install
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		ewarn ""
		ewarn "You need to have the following files in your 'system_directory' folder:"
		ewarn "bios_CD_E.bin (MegaCD EU BIOS)"
		ewarn "bios_CD_U.bin (SegaCD US BIOS)"
		ewarn "bios_CD_J.bin (MegaCD JP BIOS)"
		ewarn ""
		ewarn ""
	fi
}
