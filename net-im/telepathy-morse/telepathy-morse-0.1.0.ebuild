# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils 

DESCRIPTION="Telegram connection manager for Telepathy."
HOMEPAGE="https://projects.kde.org/projects/playground/network/telepathy/telepathy-morse"
SRC_URI="https://github.com/TelepathyIM/telepathy-morse/archive/${P}.tar.gz"
S="${WORKDIR}/${PN}-${P}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="
	net-libs/telegram-qt
	>=net-libs/telepathy-qt-0.9.6.0
"

DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8.12
"

DOCS=( README.md )

src_configure() {
	local mycmakeargs=(
		-DENABLE_TESTS=OFF
		-DENABLE_TESTAPP=OFF
		-DENABLE_EXAMPLES=OFF
		-DDESIRED_QT_VERSION=5
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
