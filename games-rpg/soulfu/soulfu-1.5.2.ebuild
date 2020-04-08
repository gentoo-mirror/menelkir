# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Secret of Ultimate Legendary Fantasy: Unleashed"
HOMEPAGE="http://www.soulfu.com/"
SRC_URI="http://macdonellba.googlepages.com/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	media-libs/libsdl[X,opengl]
	media-libs/sdl-net
	media-libs/jpeg
	media-libs/libvorbis
"

src_prepare() {
	epatch "${FILESDIR}/${P}-gentoopaths.patch"
}

src_compile() {
	cd build/unix
	emake || die "emake failed"
}

src_install() {
	dogamesbin build/unix/${PN}
	insinto "${GAMES_DATADIR}"/${PN}
	doins -r sdf/datafile.sdf  || die "data install failed"
	doicon "${FILESDIR}"/${PN}.png
	make_desktop_entry ${PN}
	prepgamesdirs
}
