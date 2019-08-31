# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit python-any-r1 cmake-utils virtualx multibuild 

DESCRIPTION="Telegram binding for Qt"
HOMEPAGE="https://github.com/Kaffeine/telegram-qt"
SRC_URI="https://github.com/Kaffeine/telegram-qt/archive/${P}.tar.gz"
S="${WORKDIR}/${PN}-${P}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
		dev-qt/qtcore:5
		dev-qt/qtdbus:5
		dev-qt/qtnetwork:5
"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8.12
"

DOCS=( LICENSE.LGPL README.md )

src_configure() {
	local mycmakeargs=(
		-DENABLE_TESTS=OFF
		-DENABLE_TESTAPP=OFF
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
