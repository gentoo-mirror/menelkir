# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Common Desktop Environment"
HOMEPAGE="https://sourceforge.net/projects/cdesktopenv"
SRC_URI="http://downloads.sourceforge.net/cdesktopenv/${P}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
		x11-libs/motif
		x11-misc/xbitmaps
		net-nds/rpcbind
		app-shells/mksh
		sys-libs/ncurses
		x11-libs/libXScrnSaver
		x11-libs/libXinerama
		dev-lang/tcl
		app-arch/ncompress
		sys-devel/bison
		x11-misc/imake
"
RDEPEND="${DEPEND}"
BDEPEND=""

IMAKECPP=cpp

src_configure() {
	emake World
	emake
}
