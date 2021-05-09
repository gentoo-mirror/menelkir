# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="Simple cross platform GUI for Rclone"
HOMEPAGE="https://github.com/kapitainsky/RcloneBrowser"
EGIT_REPO_URI="https://github.com/kapitainsky/RcloneBrowser.git"

SLOT="0"
KEYWORDS=""
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
