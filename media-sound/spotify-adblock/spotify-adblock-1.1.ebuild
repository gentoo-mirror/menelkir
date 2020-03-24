# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Spotify adblocker for linux"
HOMEPAGE="https://github.com/abba23/spotify-adblock-linux"

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/abba23/spotify-adblock-linux"
else
	SRC_URI="https://github.com/abba23/spotify-adblock-linux/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	net-misc/curl"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}-linux-${PV}"

src_install() {
	dolib spotify-adblock.so
	dodoc README.md
}

pkg_postinst() {
	ewarn "To use this, you should open spotify with:"
	ewarn "LD_PRELOAD=/usr/lib64/spotify-adblock.so spotify"
	ewarn ""
	ewarn "Be aware that you can get banned from spotify for evading ads"
}
