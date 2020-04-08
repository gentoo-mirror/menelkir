# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 toolchain-funcs l10n

DESCRIPTION="A GIMP plugin to apply a set of manipulations to groups of images"
HOMEPAGE="http://www.alessandrofrancesconi.it/projects/bimp/"
EGIT_REPO_URI="https://github.com/alessandrofrancesconi/${PN}.git"
KEYWORDS=""

LICENSE="GPL-2+"
SLOT="0"

PLOCALES="ca cs de es fr it ja ko no pl pt ru zh zh_TW"

RDEPEND="
	media-gfx/gimp:2
	dev-libs/libpcre:3
"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"
PATCHES=( "${FILESDIR}"/${PN}_build.diff )
DOCS=( CHANGELOG.md README.md )

src_compile() {
	local _pc="$(tc-getPKG_CONFIG)" _d="gimpui-2.0 libpcre"
	emake \
		CC=$(tc-getCC) \
		CFLAGS="${CFLAGS} $(${_pc} --cflags ${_d})" \
		LIBS="$(${_pc} --libs ${_d})"
}

src_install() {
	local _p="gimp20-plugin-bimp"
	mymo() {
		cp bimp-locale/${1}/LC_MESSAGES/${_p}.mo ${1}.mo
		MOPREFIX="${_p}" domo ${1}.mo
	}
	exeinto $(gimptool-2.0 --gimpplugindir)/plug-ins
	doexe bimp
	l10n_for_each_locale_do mymo
	einstalldocs
}
