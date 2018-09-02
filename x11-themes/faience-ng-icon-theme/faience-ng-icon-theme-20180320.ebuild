# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit gnome2-utils

MY_P=${PN}_${PV}

DESCRIPTION="Faience Next Generation Icon Theme"
HOMEPAGE="https://github.com/faience/faience-ng-icon-theme"

SRC_URI="https://github.com/faience/faience-ng-icon-theme/releases/download/v${PV}/${PN}-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE="minimal"

DEPEND=""
RDEPEND="x11-themes/hicolor-icon-theme
	!minimal? ( x11-themes/adwaita-icon-theme )"

S=${WORKDIR}/${PN}-${PV%.*}
RESTRICT="binchecks mirror strip"

src_prepare() {
#	local res x
#	for x in Faience Faience-Azur Faience-Ocre Faience-Claire; do
#		for res in 22 24 32 48 64 96; do
#			cp "${x}"/places/${res}/start-here-gentoo.png \
#				"${x}"/places/${res}/start-here.png || die
#		done
#		cp "${x}"/places/scalable/start-here-gentoo-symbolic.svg \
#			"${x}"/places/scalable/start-here.svg || die
#	done
		cp Faience/places/scalable/start-here-gentoo-symbolic.svg \
			Faience/places/scalable/start-here.svg || die
	eapply_user
}

src_install() {
	insinto /usr/share/icons
	doins -r Faience{,-Azur,-Ocre,-Claire}
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
