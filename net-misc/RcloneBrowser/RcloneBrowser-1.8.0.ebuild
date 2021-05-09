# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Simple cross platform GUI for Rclone"
HOMEPAGE="https://github.com/kapitainsky/RcloneBrowser"
SRC_URI="https://github.com/kapitainsky/RcloneBrowser/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"

RDEPEND="
	dev-qt/qtgui
	dev-qt/qtdeclarative
	net-misc/rclone
"

PATCHES=( "${FILESDIR}"/definitions.patch )

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/usr
		-DCMAKE_BUILD_TYPE=None
	)
	cmake_src_configure
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
