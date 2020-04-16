# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit kde.org cmake-utils

DESCRIPTION="Plasma 5 applet for monitoring CPU, GPU and other available temperature sensors"
HOMEPAGE="https://store.kde.org/p/998915/
	https://github.com/kotelnik/plasma-applet-thermal-monitor"
EGIT_REPO_URI="https://github.com/kotelnik/${PN}.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""

DEPEND="
	$(add_frameworks_dep plasma)
"
RDEPEND="${DEPEND}"

src_prepare() {
	local PATCHES=("${FILESDIR}/01-set-correct-qml-type.patch")
	cmake-utils_src_prepare
}
