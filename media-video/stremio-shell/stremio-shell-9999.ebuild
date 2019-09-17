# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Watch videos, movies, TV series and TV channels instantly. (Beta Version)"
HOMEPAGE="https://www.stremio.com"

inherit git-r3
EGIT_REPO_URI="https://github.com/Stremio/stremio-shell.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	net-libs/nodejs
	media-video/ffmpeg
	dev-qt/qtwebengine
	dev-qt/qtwebchannel
	dev-qt/qtdeclarative
	dev-qt/qtquickcontrols
	dev-qt/qtquickcontrols2
	dev-qt/qttranslations
	media-video/mpv
	dev-libs/openssl
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake -f release.makefile
}

src_install() {
	emake -f release.makefile install
}

