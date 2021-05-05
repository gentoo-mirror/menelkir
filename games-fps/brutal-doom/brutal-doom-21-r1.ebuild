# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A mod that attempts to make Doom faster placed, harder, gorier and more violent."
HOMEPAGE="http://www.moddb.com/mods/brutal-doom/"
SRC_URI="https://sjc3.dl.dbolical.com/dl/2016/01/01/brutalv21.rar?st=sEJjPir6kSRoKx2pQjRkaw==&e=1620244593 -> brutalv${PV}.rar"

LICENSE="HPND"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# TODO Add USEs for gzdoom and skulltag
IUSE=""

RDEPEND="games-fps/gzdoom"
DEPEND="app-arch/unrar"

S="${WORKDIR}"

src_install() {
	insinto "/usr/share/doom"
	doins brutalv${PV}.pk3
	dodoc "BRUTAL DOOM MANUAL.rtf" "bd21 changelog.txt"
}

pkg_postinst() {
	echo
	elog "In order to play this mod run gzdoom with -file option:"
	elog "    gzdoom -file /usr/share/doom-data/brutalv${PV}.pk3"
	echo
}
